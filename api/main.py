from fastapi import FastAPI, Query


app = FastAPI()

emails = []

@app.post("/add_email")
async def add_email(
    email: str,
    # subscription_key: str | None = Query(default=None, alias="subscription-key"),
):
    emails.append(email)
    return {"message": "Emails Added successfully", "email": email}

@app.get("/get_emails")
async def mail_list():
    return {"emails": emails}