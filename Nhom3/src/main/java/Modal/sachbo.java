package Modal;

import java.util.ArrayList;

public class sachbo {
 sachdao sdao= new sachdao();
 ArrayList <sach> ds;
 public ArrayList<sach> getsach () throws Exception{
	 ds = sdao.getsach();
	 return ds;
 }
}
