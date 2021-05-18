import java.rmi.RemoteException;

import tr.gov.nvi.tckimlik.WS.KPSPublicSoapProxy;

public class Main {

	public Main() {
		// TODO Auto-generated constructor stub
	}

	public static void main(String[] args) throws NumberFormatException, RemoteException {
		
		KPSPublicSoapProxy kpsPublic = new KPSPublicSoapProxy();
		boolean  result = kpsPublic.TCKimlikNoDogrula(
				Long.parseLong("TCKÝMLÝKNO"), 
				"AD(BUYUK)", 
				"SOYAD(BUYUK", 
				1234);//DOGUM YÝLÝNÝZ
		System.out.println("Doðrulama : " + (result ? "Baþarýlý Giriþ" : "Baþarýsýz Giriþ"));

	}

}
