<!DOCTYPE html>
<html>
<head>
<title>Klient</title>
</head>
<body>

<?php
	include("dane.php");         
	$connection = mysqli_connect($dbHost, $dbUser, $dbPassword, $dbDatabase) 
	or die('Brak po³¹czenia z serwerem MySQL.<br />B³¹d: '.mysqli_error($connection));
	mysqli_set_charset($connection, "utf-8");
?>

	<form method="POST">
		<label>Nazwa towaru</label>
		<input type="text" id="nazwa" name="nazwa" required />
		<br>
		<label>Ilosc w magazynie</label>
		<input type="text" id="ile" name="ile" required />
		<br>
		<button type="submit" > dodaj </button>
	</form>
	
	<form method="POST">
		<label> Zrealizowane? </label>
		<?php  
			$nazwy="select * from Zamowienie";
			$rezultat=mysqli_query($connection,$nazwy);
			echo '<select name="nazwaz" id="nazwaz">';
			while($bufor=mysqli_fetch_assoc($rezultat))
			{
				echo'<option value='.$bufor['ID_Zamowienia'].'>ID Klienta::'.$bufor['ID_Klienta'].'  ID zamowienia::'.$bufor['ID_Zamowienia'].'</option>';
			}
			echo"</select>";
		?>
		<button type="submit" > Zrealizowane </button>
	</form>
		
</body>
<?php
	if(isset($_POST["nazwa"]))
	{
		
		$nazwa=$_POST["nazwa"];
		$ile=$_POST["ile"];

			$query = "insert into Towary(Nazwa_towaru, Ilosc_mag) values (?, ?)";
                $statement = $connection->prepare($query);
                $statement->bind_param("ss", $nazwa, $ile);

                $nazwa = $connection->real_escape_string($nazwa);
                $ile = $connection->real_escape_string($ile);
                $statement->execute();
                $statement->close();
	}
	
	if(isset($_POST["nazwaz"])){
			$form=$_POST["nazwaz"]; 
			$zam='select * from Zamowienie where ID_Zamowienia="'.$form.'"';
			$rezult=mysqli_query($connection,$zam);
			while($bufor=mysqli_fetch_assoc($rezult))
			{
			
			$zam=$bufor["ID_Zamowienia"];
			$tow=$bufor["ID_Towaru"];
			$kli=$bufor["ID_Klienta"];
			$ilet=$bufor["Ilosc_towaru"];
			}
				$query = "insert into Faktura(ID_Zamowienia, ID_Towaru, ID_Klienta, Ilosc_towaru) values (?, ?, ?, ?)";
                $statement = $connection->prepare($query);
                $statement->bind_param("ssss", $zam, $tow ,$kli, $ilet);

                $zam = $connection->real_escape_string($zam);
                $tow = $connection->real_escape_string($tow);
                $kli = $connection->real_escape_string($kli);
                $ilet = $connection->real_escape_string($ilet);

                $statement->execute();
                $statement->close();
				$zapytanie="SELECT Klienci.ID_Klienta, Towary.ID_Towaru, Towary.Nazwa_towaru, Zamowienie.ID_Zamowienia, Zamowienie.ID_Klienta, Zamowienie.Ilosc_towaru, Zamowienie.ID_Towaru, Klienci.Imie_klient, Klienci.Nazwisko_klient, Klienci.Miasto_klient, Klienci.Ulica_klient
					FROM Towary INNER JOIN (Klienci INNER JOIN Zamowienie ON Klienci.ID_Klienta = Zamowienie.ID_Klienta) ON Towary.ID_Towaru = Zamowienie.ID_Towaru;";
				$rezultat=mysqli_query($connection,$zapytanie);
				while($bufor=mysqli_fetch_assoc($rezultat)){
					echo $bufor["Imie_klient"];
					echo $bufor["Nazwisko_klient"];
					echo $bufor["Miasto_klient"];
					echo $bufor["Ulica_klient"];
					echo $bufor["Ilosc_Towaru"];
				}
				$query='delete from Zamowienie where ID_Zamowienia="'.$zam.'"';
				$rezultat=mysqli_query($connection,$query);
	}

?>

</html> 