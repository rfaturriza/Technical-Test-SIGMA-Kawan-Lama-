class PerkalianSederhanaBefore{
    public static int perkalianSederhana (int j, int k){
        int hasil = 0;
        while(j > 0){
            total += k;
            j--;
        }
        return hasil;
    }
    public static void main(String[] args){
        int resultPerkalian = perkalianSederhana(5, 4);
        System.out.println(resultPerkalian);
        
    }
}

// kesalahan pada fungsi perkalianSederhana diatas yaitu
// pada "total += k;" yang seharusnya "hasil += k;"

// Hasil perbaikan:
class PerkalianSederhanaAfter{
    public static int perkalianSederhana (int j, int k){
        int hasil = 0;
        while(j > 0){
            hasil += k;
            j--;
        }
        return hasil;
    }
    public static void main(String[] args){
        int resultPerkalian = perkalianSederhana(5, 4);
        System.out.println(resultPerkalian);
        
    }
}