
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
		<label>Podaj imiê</label>
		<input type="text" id="imie" name="imie" required />
		<br>
		<label>Podaj nazwisko</label>
		<input type="text" id="nazwisko" name="nazwisko" required />
		<br>		
		<label>Podaj Miasto</label>
		<input type="text" id="miasto" name="miasto" required />
		<br>		
		<label>Podaj Ulice</label>
		<input type="text" id="ulica" name="ulica" required />
		<br>		
		<label>Podaj Kod pocztowy</label>
		<input type="text" id="kod" name="kod" required />
		<br>		
		<label>Podaj e-mail</label>
		<input type="text" id="mail" name="mail" required />
		<br>
		
		<label> Wybierz produkt </label>
		<?php  
			$nazwy="select ID_Towaru, Nazwa_towaru from Towary";
			$rezultat=mysqli_query($connection,$nazwy);
			echo '<select name="nazwa" id="nazwa">';
			while($bufor=mysqli_fetch_assoc($rezultat))
			{
				echo'<option value='.$bufor['ID_Towaru'].'>'.$bufor['Nazwa_towaru'].' </option>';
			}
			echo"</select>"; 
		?>
		<br>
		<label> Ilosc sztuk towaru </label>
		<input type="text" id="ilosc" name="ilosc" required/>
		<br>
		<button type="submit" > zamow </button>
	</form>
	

</body>
<?php
	if(isset($_POST["imie"]))
	{
		
		$imie=$_POST["imie"];
		$nazwisko=$_POST["nazwisko"];
		$miasto=$_POST["miasto"];
		$mail=$_POST["mail"];
		$kod=$_POST["kod"];
		$ulica=$_POST["ulica"];
		$ilosc=$_POST["ilosc"];
		$nazwa=$_POST["nazwa"];
		echo $imie."<br>";
		echo $kod;
		$zapytanie='select ID_Klienta from Klienci where Mail_klient="'.$mail.'"';
		$rezultat=mysqli_query($connection,$zapytanie);
		$bufor=mysqli_fetch_assoc($rezultat);

		if($bufor["Mail_klient"]==NULL)
		{
			$query = "insert into Klienci(Imie_klient, Nazwisko_klient, Miasto_klient, Ulica_klient, Kod_klient, Mail_Klient) values (?, ?, ?, ?, ?, ?)";
                $statement = $connection->prepare($query);
                $statement->bind_param("ssssss", $imie, $nazwisko ,$miasto, $ulica, $kod, $mail);

                $imie = $connection->real_escape_string($imie);
                $nazwisko = $connection->real_escape_string($nazwisko);
                $miasto = $connection->real_escape_string($miasto);
                $ulica = $connection->real_escape_string($ulica);
				$kod = $connection->real_escape_string($kod);
                $mail = $connection->real_escape_string($mail);
                $statement->execute();
                $statement->close();
		}

		$zapytanie='select Id_Klienta from Klienci where Mail_klient="'.$mail.'"';
		$rezultat=mysqli_query($connection,$zapytanie);
		$bufor=mysqli_fetch_assoc($rezultat);
		$klient=$bufor["Id_Klienta"];
		$query = "insert into Zamowienie(ID_Towaru, ID_Klienta, Ilosc_towaru) values (?, ?, ?)";
        $statement = $connection->prepare($query);
        $statement->bind_param("sss", $nazwa, $klient, $ilosc);

        $nazwa = $connection->real_escape_string($nazwa);
        $klient = $connection->real_escape_string($klient);
		$ilosc = $connection->real_escape_string($ilosc);
        $statement->execute();
        $statement->close(); 
	}
mysqli_close($connection);	
?>


</html> 