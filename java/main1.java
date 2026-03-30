import java.util.Scanner;


class podstawowa{
     public static void uruchom(){
    for (int i = 1; i < 11; i++) {
        System.out.println(i);
        }
     }    
}

class podstawowaDruga{
     public static void uruchom(){
    for (int i = 5; i < 11; i++) {
        System.out.println(i);
        }
     }    
}

class naodwrot{
     public static void uruchom(){
    for (int i = 10; i >= 1; i--) {
        System.out.println(i);
        }
     }    
}

class przezTrzy{
    public static void uruchom(){
        for (int i = 1; i <= 100; i++){
            if (i % 3 == 0){
                System.out.println(i);
            }
        }
    }
}

class przezPiec{
    public static void uruchom(){
        for (int i =1; i <= 100; i++){
            if (i % 5 == 0){
                System.out.println(i);
            }
        }
    }
}

class przezTIP{
    public static void uruchom(){
        for (int i = 1; i <= 100; i++){
            if (i % 5 == 0 && i% 3 == 0){
                System.out.println(i);
            }
        }
    }
}

class przezTLP{
    public static void uruchom(){
        for (int i = 1; i <= 100; i++){
            if (i % 5 == 0 || i% 3 == 0){
                System.out.println(i);
            }
        }
    }
}

class wlasneWartosci{
    public static void uruchom(){
         Scanner sc = new Scanner(System.in);
         System.out.println("podaj wartość startową");
         int wartoscJeden = sc.nextInt();
         System.out.println("podaj wartość końcową");
         int wartoscDwa= sc.nextInt();

        if ( wartoscJeden <= wartoscDwa) {
            for (int i = wartoscJeden; i <= wartoscDwa; i++) {
                System.out.print(i + " ");
            }
        } 
        else {
            for (int i = wartoscJeden; i >= wartoscDwa; i--) {
                System.out.print(i + " ");
            }
        }

    }
}

class tabliczka{
    public static void uruchom(){
        int[][] matrix = new int[10][10];

        int value = 1;
        for (int i = 1; i <= 10; i++) {
            for (int j = 1; j <= 10; j++) {
                System.out.print(i *j + "\t");
            }
            System.out.println();
        }
    }
}

class fibonacciego{
    public static void uruchom(){
        Scanner sc = new Scanner(System.in);

        System.out.println("Podaj ile elementów ciągu Fibonacciego wyświetlić:");
        int n = sc.nextInt();

        if (n <= 0) {
            System.out.println("Podaj liczbę większą od zera!");
            return;
        }
        int a = 0;
        int b = 1;

        if (n >= 1) System.out.print(a + " ");
        if (n >= 2) System.out.print(b + " ");

        for (int i = 3; i <= n; i++) {
            int c = a + b;   
            System.out.print(c + " ");
            a = b;
            b = c;
        }

        System.out.println();
    }
}

public class main1 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Wybierz numer zadania do uruchomienia:");
        System.out.println("1. liczby od 1 do 10");
        System.out.println("2. liczby od 5 do 10");
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
