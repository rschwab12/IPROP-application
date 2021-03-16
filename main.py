import mysql.connector
from prettytable import PrettyTable

def main():
    playing = True

    mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="",
    database="games"
    )

    mycursor = mydb.cursor()
    mycursor.execute("SELECT id, naam FROM games")
    allGames = mycursor.fetchall()
    print(allGames[0])

    while playing:
        print(f"\n\n{bcolors.BOLD}{bcolors.UNDERLINE}{bcolors.Blue}\tINdiePACman{bcolors.ENDC}")
        print("U krijgt zometeen een lijst van games te zien. Bekijk welke games u gespeeld heeft, en geef die vervolgens " +
        "door de id's op te geven.")
        print("Op basis hiervan krijgt u een aanbeveling voor een nieuwe game.")
        print(f"{bcolors.BOLD}{bcolors.Red}Games:{bcolors.ENDC}")
        
        table = PrettyTable(['id', 'naam'])
        for game in allGames:
            table.add_row([game[0], game[1]])
        print(table)

        gamesInput = input("\nVoer de id's in van games die u gespeeld heeft, gescheiden door komma's:\n")

        while (containsLetters(gamesInput)) :
            print(f"{bcolors.Red}Foute invoer, gebruik alleen cijfers en komma's!{bcolors.ENDC}")
            gamesInput = input("\nVoer de id's in van games die u gespeeld heeft, gescheiden door komma's:\n")

        gamesInput = gamesInput.replace(" ", "")
        gamesList = gamesInput.split(",")

        # TODO  
        # gamesList doorgeven aan functie van Rico
        # print(resultaat/aanbeveling)

        repeat = input("Wil je opnieuw een aanbeveling krijgen? (y/n)\n")
        if repeat == 'n':
            playing = False

def containsLetters(gamesInput):
    special_characters = "~`!@#$%€^&*()_-+={[}]|\\:;\"\'<>.?/"
    if (any(c.isalpha() for c in gamesInput)):
        return True
    elif any(c in special_characters for c in gamesInput):
        return True

class bcolors:
    HEADER = '\033[95m'
    ENDC = '\033[0m'
    BOLD = '\033[1m'
    UNDERLINE = '\033[4m'
    Red = '\033[91m'
    Green = '\033[92m'
    Blue = '\033[94m'
    Cyan = '\033[96m'
    White = '\033[97m'
    Yellow = '\033[93m'
    Magenta = '\033[95m'
    Grey = '\033[90m'
    Black = '\033[90m'

if __name__ == "__main__":
    main()