
from robot.api.deco import keyword

ROBOT_LIBRARY_SCOPE = "GLOBAL"
ROBOT_AUTO_KEYWORDS = False


DataGen = {
    "UserData":
    {
        "User1":
        {
        "FirstName":"FName1",
         "LastName":"Lname1",
         "UserName":"User1",
         "Password":"Pass1",
         "Role":"Admin",
         "Email":"admin@email.com",
         "Cell":"082555"
         },
    "User2":
        {
        "FirstName":"FName2",
         "LastName":"Lname2",
         "UserName":"User2",
         "Password":"Pass2",
         "Role":"Customer",
         "Email":"customer@email.com",
         "Cell":"083444"
        }
        
    }}

@keyword("Get User1 Data")
def get_user1_data():
    return DataGen["UserData"]["User1"]["FirstName"] , DataGen["UserData"]["User1"]["LastName"] , DataGen["UserData"]["User1"]["UserName"], DataGen["UserData"]["User1"]["Password"], DataGen["UserData"]["User1"]["Role"], DataGen["UserData"]["User1"]["Email"], DataGen["UserData"]["User1"]["Cell"]

@keyword("Get User2 Data")
def get_user2_data():
    return DataGen["UserData"]["User2"]["FirstName"] , DataGen["UserData"]["User2"]["LastName"] , DataGen["UserData"]["User2"]["UserName"], DataGen["UserData"]["User2"]["Password"], DataGen["UserData"]["User2"]["Role"], DataGen["UserData"]["User2"]["Email"], DataGen["UserData"]["User2"]["Cell"]
