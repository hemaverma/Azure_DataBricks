<<<<<<< HEAD
from main import Greeter


def test_default_greeting_set():
    greeter = Greeter()
    assert greeter.message == "Hello world!"
=======
# Databricks notebook source
# COMMAND ----------

import unittest

class Greeter:
    def __init__(self):
        self.message = "Hello Test Message from Main File!"

class TestGreeter(unittest.TestCase):
    def test_greeter_message(self):
        greeter = Greeter()
        self.assertEqual(greeter.message, "Hello Test Message from Main File!", "The message should be 'Hello world!'")

if __name__ == "__main__":
    unittest.main(argv=['first-arg-is-ignored'], exit=False)

# COMMAND ----------
>>>>>>> ed1cbd6909ef82626ad18d3cd38e7ed48112535d
