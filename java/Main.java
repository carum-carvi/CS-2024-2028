import java.util.Scanner;


class PoleKola{
    public static void uruchom(){
        Scanner sc = new Scanner(System.in);
        System.out.println("podaj promień koła (r): ");
         double r = sc.nextDouble();

        if (r < 0) {
            System.out.println("Promień nie może być ujemny.");
        } else {
            double pole = Math.PI * r * r;
            System.out.printf("Pole koła o promieniu %.4f wynosi %.6f%n", r, pole);
        }
    }
}

class WynikDzielenia{
    public static void uruchom(){
        Scanner sc = new Scanner(System.in);
        System.out.println("Wyświetlimy wynik dzielenia dwóch liczb: ");

        System.out.println("Podaj pierwszą liczbę: ");
        double liczbaJeden = sc.nextDouble();

        System.out.println("Podaj drugą liczbę: ");
        double liczbaDwa= sc.nextDouble();

        if (liczbaDwa == 0){
            System.out.println("nie można dzielić przez zero");
        }
        else {
            System.out.println("Wynik dzielenia: " + (liczbaJeden/liczbaDwa));
        }

    }
}

class IloscLat{
    public static void uruchom(){
        Scanner sc = new Scanner(System.in);
        System.out.println("sprawdzamy wiek, podaj liczbę: ");

        int wiek = sc.nextInt();

        if (wiek < 18){
            System.out.println("Nie możesz głosować");
        }
        else if (wiek < 35){
            System.out.println("Możesz głosować, ale nie możesz być prezydentem");
        }
        else{ 
            System.out.println("Możesz kandytować na prezydenta");
        }
    }
}

class Kolejnosc{
    public static void uruchom(){
        Scanner sc = new Scanner(System.in);
        System.out.println("Tutaj będziemy układać liczby w kolejności od najmniejszej do największej. Podaj 3 liczby: ");
        
        double liczbaJeden = sc.nextDouble();
        double liczbaDwa = sc.nextDouble();
        double liczbaTrzy = sc.nextDouble();
        double temp;

        if (liczbaJeden>liczbaDwa){
            temp = liczbaJeden;
            liczbaJeden = liczbaDwa;
            liczbaDwa =temp;

        }
        if (liczbaDwa>liczbaTrzy){
            temp = liczbaDwa;
            liczbaDwa = liczbaTrzy;
            liczbaTrzy = temp;
        }
        if (liczbaJeden>liczbaDwa){
            temp =liczbaJeden;
            liczbaJeden = liczbaDwa;
            liczbaDwa = temp;
        }

        System.out.println("Liczby od najmniejszej do największej: ");
        System.out.println(liczbaJeden+","+liczbaDwa+"," + liczbaTrzy);
    }
}
class Trojkat {
    public static void uruchom(){
        Scanner sc = new Scanner(System.in);
        System.out.println("Sprawdzamy czy powstanie trójkąt. Podaj 3 liczby: ");

        double bokJeden = sc.nextDouble();
        double bokDwa = sc.nextDouble();
        double bokTrzy = sc.nextDouble();

        if (bokJeden+bokDwa>bokTrzy && bokJeden+bokTrzy>bokDwa && bokDwa+bokTrzy>bokJeden){
            System.out.println("Trójkąt powstanie");
        }
        else{
            System.out.println("trójąk nie powstanie");
        }
    }

    
}

class TrojkatProstokatny{
    public static void uruchom(){
        Scanner sc = new Scanner(System.in);
        System.out.println("Sprawdzamy czy powstanie trójkąt. Podaj 3 liczby: ");

        double bokJeden = sc.nextDouble();
        double bokDwa = sc.nextDouble();
        double bokTrzy = sc.nextDouble();

        if (bokJeden+bokDwa>bokTrzy && bokJeden+bokTrzy>bokDwa && bokDwa+bokTrzy>bokJeden){
           double max = Math.max(bokJeden, Math.max(bokDwa, bokTrzy));
           double druga = 0, trzecia = 0; 
                if(max == bokJeden){
                    druga = bokDwa;
                    trzecia = bokTrzy;
                }
                else if(max == bokDwa){
                    druga = bokJeden;
                    trzecia = bokTrzy;
                }
                else{
                    druga = bokJeden;
                    trzecia = bokDwa;
                }

            if (Math.abs(max * max - (druga* druga + trzecia * trzecia)) <1e-9){
                System.out.println("Powstanie trójkąt prostokątny");
            } else{
                System.out.println("Nie powstanie prostokątny");
            }

        }
        else{
            System.out.println("trójąk nie powstanie");
        }
    }    
}

class delta{
    public static void uruchom(){
        Scanner sc = new Scanner(System.in);
        System.out.print("Podaj współczynnik a: ");
        double a = sc.nextDouble();

        if (a == 0) {
            System.out.println("To nie jest równanie kwadratowe (a = 0).");
            return;
        }

        System.out.print("Podaj współczynnik b: ");
        double b = sc.nextDouble();

        System.out.print("Podaj współczynnik c: ");
        double c = sc.nextDouble();

        double delta = b * b - 4 * a * c;

        System.out.println("Delta = " + delta);

        if (delta < 0) {
            System.out.println("Brak pierwiastków rzeczywistych.");
        } else if (delta == 0) {
            double x = -b / (2 * a);
            System.out.println("Równanie ma jeden pierwiastek: x = " + x);
        } else {
            double sqrtDelta = Math.sqrt(delta);
            double x1 = (-b - sqrtDelta) / (2 * a);
            double x2 = (-b + sqrtDelta) / (2 * a);
            System.out.println("Równanie ma dwa pierwiastki:");
            System.out.println("x1 = " + x1);
            System.out.println("x2 = " + x2);
        }

    }    
}

public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Wybierz numer zadania do uruchomienia:");
        System.out.print("1. Pole koła");
        System.out.print("2. Wynik dzielenia dwóch liczb");
        System.out.print("3. Ile ma lat");
        System.out.print("4. Kolejność liczb");
        System.out.print("5. Czy powstanie trójkąt");
        System.out.print("6. Czy powstanie trójkąt prostokątny");
        System.out.print("7. Pierwiastek z delty");
        System.out.println("Twój wybór: ");

        int wybor = sc.nextInt();

        switch (wybor) {
            case 1:
            PoleKola.uruchom();
            break;

            case 2:
            WynikDzielenia.uruchom();
            break;

            case 3:
            IloscLat.uruchom();
            break;

            case 4:
            Kolejnosc.uruchom();
            break;

            case 5:
            Trojkat.uruchom();
            break;

            case 6:
            TrojkatProstokatny.uruchom();
            break;

            case 7:
            delta.uruchom();
            break;

            default:
            System.out.println("Niepoprawny wybór");
            break;
        }
        

        sc.close();
    }
}
