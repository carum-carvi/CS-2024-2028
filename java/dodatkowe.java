public class dodatkowe {
        public static void main(String[] args) {
            for (int i = 1; i<=100; i++){
                String wynik ="";

                wynik += (i %2 == 0) ? "podzielne przez 2" : "";
                wynik +=(i %3 == 0) ? "podzielne przez 3 " : "";
                
                System.out.println(wynik.equals("") ? i : wynik);
                
            }

        }
}
