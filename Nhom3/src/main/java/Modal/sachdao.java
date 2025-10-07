package Modal;

import java.util.ArrayList;

public class sachdao {
 public ArrayList<sach> getsach () throws Exception{
	 ArrayList<sach> ds = new ArrayList<sach>();
	 ds.add(new sach("1A","LanHenTai","hoangLan",2000,10,"b1.jpg","ly"));
	 ds.add(new sach("1B","DatBimChua","lequangdat",2000,10,"b2.jpg","hoa"));
	 ds.add(new sach("1C","MinhBeo","Minh",2000,10,"b3.jpg","van"));
	 ds.add(new sach("1D","CoXaDieu","Co",2000,10,"b4.jpg","tin"));
	 ds.add(new sach("1E","DangLong","Long",2000,10,"b5.jpg","tin"));
	 ds.add(new sach("1F","MinhHieu","Long",2000,10,"b6.jpg","tin"));
	 ds.add(new sach("1G","AnHung","Hieu",2000,10,"b7.jpg","tin"));
	 ds.add(new sach("1H","XuanDieu","Dieu",2000,10,"b8.jpg","tin"));
	 
	 
	 return ds;
 }

}
