import java.rmi.RemoteException;

import tr.gov.nvi.tckimlik.WS.KPSPublicSoapProxy;

public class Main {

	public Main() {
		// TODO Auto-generated constructor stub
	}

	public static void main(String[] args) throws NumberFormatException, RemoteException {
		
		KPSPublicSoapProxy kpsPublic = new KPSPublicSoapProxy();
		boolean  result = kpsPublic.TCKimlikNoDogrula(
				Long.parseLong("TCK�ML�KNO"), 
				"AD(BUYUK)", 
				"SOYAD(BUYUK", 
				1234);//DOGUM Y�L�N�Z
		System.out.println("Do�rulama : " + (result ? "Ba�ar�l� Giri�" : "Ba�ar�s�z Giri�"));

	}

}
