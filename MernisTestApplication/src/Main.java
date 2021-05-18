import java.rmi.RemoteException;

import tr.gov.nvi.tckimlik.WS.KPSPublicSoapProxy;

public class Main {

	public Main() {
		// TODO Auto-generated constructor stub
	}

	public static void main(String[] args) throws NumberFormatException, RemoteException {
		
		KPSPublicSoapProxy kpsPublic = new KPSPublicSoapProxy();
		boolean  result = kpsPublic.TCKimlikNoDogrula(
				Long.parseLong("25665285212"), 
				"AYKUT", 
				"ÞAHÝN", 
				1998);
		System.out.println("Doðrulama : " + (result ? "Baþarýlý Giriþ" : "Baþarýsýz Giriþ"));

	}

}
