public class StringArrayTest {
    public static list<string> generateStringArray(integer n){
    	List<string> lista = new List<string>();
    	for (integer i=0;i<=n-1;i++){
		lista.add('Test ' + i);           
    	}
     return lista;
    }
}