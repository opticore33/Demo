import logging
from .main import emails

def send_email():
    print("email sent successfully")
    logging.info(f"email sent successfully: {emails}")