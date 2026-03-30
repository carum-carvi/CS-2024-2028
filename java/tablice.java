import java.util.Scanner;

//Napisz program,  
// który losuje liczbę. 
// Użytkownik ma za zadanie odgadnąć liczbę
//  wylosowaną przez komputer z określonego zakresu. 
//  Program ma podpowiadać “za dużo”, “za mało” 
// lub “odgadłeś za “+liczba_prób+”razem”.


class Tablica{
    public static void uruchom(){

    }
}

public class tablice {
    public static void main(String [] args){
         Scanner sc = new Scanner(System.in);
        System.out.println("Wybierz numer zadania do uruchomienia:");
        System.out.println("1. użytkownik ma zgadnąć liczbę wylosowaną przez komputer");
        System.out.println("2. wylosuje liczbe z podanego przez użytkownika zakresu i wyswietli");
        System.out.println("3. liczby 10 do 1");
        System.out.println("4. liczby od 1 do 100 podzielne bez reszty przez 3");
        System.out.println("5. liczby od 1 do 100 podzielne bez reszty przez 5");
        System.out.println("6. liczby od 1 do 100 podzielne bez reszty przez 3 i 5 jednoczesnie");
        System.out.println("7. liczby od 1 do 100 podzielne bez reszty przez 3 lub przez 5");
        System.out.println("8. Pętla z przedziału podanego przez użytkownika");
        System.out.println("9. Tabliczka mnożenia");
        System.out.println("10. ciąg fibonacciego");
        System.out.println("Twój wybór: ");

        int wybor = sc.nextInt();

        
        switch (wybor) {
            case 1:
            podstawowa.uruchom();
            break;

            case 2:
            podstawowaDruga.uruchom();
            break;

            case 3:
            naodwrot.uruchom();
            break;

            case 4:
            przezTrzy.uruchom();
            break;

            case 5:
            przezPiec.uruchom();
            break;

            case 6:
            przezTIP.uruchom();
            break;

            case 7:
            przezTLP.uruchom();
            break;

            case 8:
            wlasneWartosci.uruchom();
            break;

            case 9:
            tabliczka.uruchom();
            break; 

            case 10:
            fibonacciego.uruchom();
            break;

            default:
            System.out.println("Niepoprawny wybór");
            break;
        }
        

        sc.close();




    }   
}
