import mysql.connector
from prettytable import PrettyTable

def main():
    # Playing geeft aan of de applicatie moet blijven runnen. Zodra deze op False word gezet zal de applicatie afsluiten
    playing = True

    # Aanmaken database connectie
    mydb = createSQLConnection()

    # Vragen ophalen uit de database en in een array stoppen
    mycursor = mydb.cursor()
    mycursor.execute("SELECT id, naam FROM games")
    allGames = mycursor.fetchall()

    while playing:
        print(f"\n\n{bcolors.BOLD}{bcolors.UNDERLINE}{bcolors.Blue}\tINdiePACman{bcolors.ENDC}")
        print("U krijgt zometeen een lijst van games te zien. Bekijk welke games u gespeeld heeft, en geef die vervolgens " +
        "door de id's op te geven.")
        print("Op basis hiervan krijgt u een aanbeveling voor een nieuwe game.")
        print(f"{bcolors.BOLD}{bcolors.Red}Games:{bcolors.ENDC}")

        # Games printen via de prettytable library
        table = PrettyTable(['id', 'naam'])
        for game in allGames:
            table.add_row([game[0], game[1]])
        print(table)

        # Gebruiker vragen om de game id's van eerder gespeelde games op te geven (gescheiden door een komma)
        gamesInput = input("\nVoer de id's in van games die u gespeeld heeft, gescheiden door komma's:\n")

        # Controleren of de input goed is. Zo niet, geef een foutcode en stel de vraag opnieuw
        while (containsLetters(gamesInput)) :
            print(f"{bcolors.Red}Foute invoer, gebruik alleen cijfers en komma's!{bcolors.ENDC}")
            gamesInput = input("\nVoer de id's in van games die u gespeeld heeft, gescheiden door komma's:\n")

        # Spaties uit de input halen en id's opsplitsen
        gamesInput = gamesInput.replace(" ", "")
        gamesList = gamesInput.split(",")

        # Bereken een aanbeveling voor de gebruiker
        generateRecommendations(gamesList)

        # Vraag de gebruiker of hij/zij een nieuwe aanbeveling wilt
        repeat = input("Wil je opnieuw een aanbeveling krijgen? (y/n)\n")
        if repeat == 'n':
            playing = False

# Controleert of de gamesInput andere tekens dan komma's of cijfers bevat
def containsLetters(gamesInput):
    special_characters = "~`!@#$%€^&*()_-+={[}]|\\:;\"\'<>.?/"
    if (any(c.isalpha() for c in gamesInput)):
        return True
    elif any(c in special_characters for c in gamesInput):
        return True

def generateRecommendations(gamesList):
    # Maak een database verbinding aan
    mydb = createSQLConnection()

    categories = []
    # Haal alle genres op van de eerder gekozen games
    for x in gamesList:
        mycursor = mydb.cursor()
        mycursor.execute("SELECT genre FROM games WHERE id = " + x)
        gameGenre = mycursor.fetchall()
        categories.append(gameGenre[0][0])

    # Bereken welke genre het meest voorkomt
    mostCommon = max(set(categories), key = categories.count)

    # Pak een willekeurige game uit de database met de genre gelijk aan de variabele mostCommon
    mycursor = mydb.cursor()
    mycursor.execute("SELECT naam FROM games WHERE genre = '" + mostCommon + "' LIMIT 1;")
    gameGenre = mycursor.fetchall()

    # Print de aanbevolen game
    print("De volgende game is echt wat voor jou:")
    print(gameGenre[0][0])

# Maakt een verbinding aan met de database
def createSQLConnection():
    mydb = mysql.connector.connect(
        host="127.0.0.1",
        port="3306",
        user="root",
        password="",
        database="games"
    )
    return mydb

# Kleuren die gebruikt kunnen worden op gekleurde tekst in de console te printen
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

# Main method
if __name__ == "__main__":
    main()
