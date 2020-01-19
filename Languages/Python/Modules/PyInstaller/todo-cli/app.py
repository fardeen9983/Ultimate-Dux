"""To-do list where you can chronologically add your tasks, modify them and mark if they have been completed.
  A cleanup feature enables you to delete completed tasks which are more than a week old - unless
  you have flagged them as 'protected'."""
from collections import OrderedDict
import datetime
import os

from peewee import *

db = SqliteDatabase('to_do_list.db')


class ToDo(Model):
    """Model for creating to-do items. 'done' indicates that it's been completed,
    'protected' makes it immune to cleanup"""
    task = CharField(max_length=255)
    timestamp = DateTimeField(default=datetime.datetime.now)
    done = BooleanField(default=False)
    protected = BooleanField(default=False)

    class Meta:
        database = db


def clear():
    """Clear the display"""
    os.system('cls' if os.name == 'nt' else 'clear')


def initialize():
    """Connect to database, build tables if they don't exist"""
    db.connect()
    db.create_tables([ToDo], safe=True)


def view_entries(index, entries, single_entry):
    """"View to-do list"""
    clear()

    index = index % len(entries)  # determines which entry is selected for modification
    if single_entry:  # to see only 1 entry
        entries = [entries[index]]
        index = 0
    else:
        print('\nMY TO-DO LIST')
        print('=' * 40)
    prev_timestamp = None

    for ind, entry in enumerate(entries):
        timestamp = entry.timestamp.strftime('%d/%B/%Y')

        if timestamp != prev_timestamp:  # same timestamps get printed only once
            print('\n')
            print(timestamp)
            print('=' * len(timestamp))
            prev_timestamp = timestamp

        if ind == index:  # placing the selection tick
            tick = '> '
        else:
            tick = '  '

        print('{}{}'.format(tick, entry.task), end='')
        if entry.done:
            print('\t(DONE)', end='')
        if entry.protected:
            print('\t <P>', end='')
        print('')

    return entries  # so that we can modify the given entry if needed


def add_entry(index, entries):
    """Add a new task"""

    new_task = input('\nTo do: ')
    if input('Protect [yN]? ').lower().strip() == 'y':
        protect = True
    else:
        protect = False
    ToDo.create(task=new_task,
                protected=protect)


def modify_entry(index, entries):
    """Modify selected entry"""
    entry = view_entries(index, entries, True)[0]
    print('\n\n')

    for key, value in sub_menu.items():
        print('{}) {}'.format(key, sub_menu[key].__doc__))
    print('q) Back to Main')
    next_action = input('Action: ')

    if next_action.lower().strip() in sub_menu:
        sub_menu[next_action](entry)
    else:
        return


def cleanup_entries(index, entries):
    """Cleanup: delete completed, non-protected entries older than a week"""
    if (input('Have you checked that you protected the important stuff? [yN]').lower().strip() == 'y'):
        now = datetime.datetime.now()
        for entry in entries:
            if (now - entry.timestamp > datetime.timedelta(7, 0, 0) and entry.done and not entry.protected):
                entry.delete_instance()


def modify_task(entry):
    """Modify task"""
    new_task = input('> ')
    entry.task = new_task
    entry.save()


def delete_entry(entry):
    """Erase entry"""
    if (input('Are you sure [yN]? ').lower().strip() == 'y'):
        entry.delete_instance()


def toggle_done(entry):
    """Toggle 'DONE'"""
    entry.done = not entry.done
    entry.save()


def toggle_protection(entry):
    """Toggle 'protected'"""
    entry.protected = not entry.protected
    entry.save()


def menu_loop():
    choice = None
    index = 0  # shows which entry is selected
    entries = ToDo.select().order_by(ToDo.timestamp.asc())
    while choice != 'q':
        if len(entries) != 0:
            view_entries(index, entries, False)

            print('\n' + '=' * 40 + '\n')
            print('Previous/Next: p/n \n')
        for key, value in main_menu.items():
            print('{}) {}'.format(key, value.__doc__))
        print('q) Quit')

        choice = input('\nAction: ')
        if choice in main_menu:
            try:
                main_menu[choice](index, entries)
            except ZeroDivisionError:
                continue
            entries = ToDo.select().order_by(ToDo.timestamp.asc())  # update entries after operations

        elif choice == 'n':
            index += 1
        elif choice == 'p':
            index -= 1


main_menu = OrderedDict([
    ('a', add_entry),
    ('m', modify_entry),
    ('c', cleanup_entries)
])

sub_menu = OrderedDict([
    ('m', modify_task),
    ('d', toggle_done),
    ('p', toggle_protection),
    ('e', delete_entry)
])

if __name__ == '__main__':
    initialize()
    menu_loop()
    db.close()