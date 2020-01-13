Twitter Bot in python
1. Create a developer account on Twitter to create API key for your app.
Should take only a few minutes to do so. https://developer.twitter.com/en/apply-for-access.html
2. Create an App on the Twitter Developer console
3. Enable Read and Write permissions
4. Make sure to generate your consumer keys and access tokens for the App
5. We will be using tweepy library of Twitter operations in Python. But it support pyhton upto 3.7
6. For a workaround install the following lib instead :
pip/pip3 install -U git+https://github.com/tweepy/tweepy.git@2efe385fc69385b57733f747ee62e6be12a1338b
7. You are good to go for writing your first Twitter Bot

8. Authenticate your python code with Tweepy by providing the keys and tokens
9. Create a File to store the last processed Id of user mentioning you
10. Process all the mentions sent to you after the Mention id stored in the file and update your status if they meet your criteria.
11. Put a timer on it to repeat the steps a number of times.
