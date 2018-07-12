SELECT DISTINCT Computers.ComputerID, Clients.Name AS `Client Name`, Computers.Name AS ComputerName, Computers.Domain, Computers.UserName
FROM Computers, Clients
WHERE Computers.ClientID = Clients.ClientID AND ( computers.ComputerID NOT IN (SELECT ComputerID FROM Software WHERE ComputerID = Computers.ComputerID AND Software.Name LIKE '%xxxxx%' )) AND Clients.Name LIKE "%yyyyy%"