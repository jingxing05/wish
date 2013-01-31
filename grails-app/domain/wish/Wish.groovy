package wish

class Wish {
	String fromwho
	String toname
	String wish
	Date dateCreated
	
    static belongsTo = [newlyweds:Newlyweds]
    static constraints = {
		fromwho(blank:false,size:1..13)
		newlyweds(blank:false)
		toname(blank:false,size:2..20)
		wish(blank:false,size:10..70)
		dateCreated(blank:false)
    }
	
	String toString(){
		return wish
	}
	
}
