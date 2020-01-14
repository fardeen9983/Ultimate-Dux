"""
This File contains all the code required to create a Twitter Bot
"""

# import python library for Twitter
import time

import tweepy

# Assign the consumer keys and access tokens
CONSUMER_KEY = 'dqDKc3Jis3FnkxqFW5RcWc8Dn'
CONSUMER_SECRET = '51ZVBTZ6V7wbNTBJFcA9zVsCYK3MnhGObZnzS5DLYrnakQPuSn'
ACCESS_TOKEN = '927951233570168832-Ee0Wp2tew393e7CEu2W2BL5ptnfXlga'
ACCESS_SECRET = 'fkNu49qbtN5GBckpuPLnJ1tIZNCAIP9M0RuIYinGC0tPc'

# Set tweepy authentication and set access to gain the Tweepy API
auth = tweepy.OAuthHandler(CONSUMER_KEY, CONSUMER_SECRET)
auth.set_access_token(ACCESS_TOKEN, ACCESS_SECRET)
# This object will be used to communicate through Twitter API. Also wat if twitter rate limiter is exceeded
api = tweepy.API(auth, wait_on_rate_limit=True)

# Fetch all the mentions of the Twitter account. It returns a ResultSet Object (Subclass of List)
mentions = api.mentions_timeline()

"""
Each element of ResultSet is of class tweepy.mpdels.Status
To simplify access to the properties of Status Object convert it into a Dictionary
There are various fields like id and text of the Status object which relate to any mentions made to Twitter account 
"""
print(mentions[0].__dict__['id'])

"""
Every mention  has a ID. After each operation we will save the ID of the last processed mention to et hold of all the mentions after that
To do that create a local file to save and retrieve the last mention ID
"""
ID_FILE = "last_mention_id.txt"


# Save last processed mention's ID
def save_id_to_file(file_name, last_id):
    file = open(file_name, 'w')
    file.write(str(last_id))
    file.close()


# Fetch last mention ID
def fetch_lat_mention_id(file_name):
    file = open(file_name, 'r')
    id = int(file.read().strip())
    file.close()
    return id


"""
Define a function to reply to the tweets by calling the function every few seconds
Update the mention timeline to fetch mentions after the last processed mention
"""

def reply_to_tweets():
    id = fetch_lat_mention_id(ID_FILE)
    if id != None:
        mentions = api.mentions_timeline(id, tweet_mode='extended')
        for mention in reversed(mentions):
            print(mention.id, ' ', mention.full_text, )
            last_id = mention.id
            save_id_to_file(ID_FILE, last_id)
            print(mention.user)
            # Check whether the mention text contains our required hashtag
            if '#helloworld' in mention.full_text.lower():
                print('Found #helloworld!! Responding back')
                # Now reply back to these mentions
                api.update_status('@' + mention.user.screen_name + ' #HelloWorld Back to you ' + mention.user.name,
                                  mention.id)


while True:
    reply_to_tweets()
    time.sleep(15)
