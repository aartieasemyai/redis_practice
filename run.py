import uvicorn

if __name__=="__main__":
    uvicorn.run("main:app", host="127.0.0.5", port=8090, reload=True)