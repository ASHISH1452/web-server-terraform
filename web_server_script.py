import os

def start_web_server():
    # Apache web server को start करें
    os.system("sudo service apache2 start")

if __name__ == "__main__":
    start_web_server()
