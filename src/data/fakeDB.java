package data;

public class fakeDB {
	String sentence;
	String pos;
	String id;
	String chapter;
	String word;
	String translation;
	
	
	public String[] getSentence(int n){
		switch (n){
		case 1: sentence= "Her name is Socks .";
		
		default: sentence= "Her name is Socks .";
		
		
		}
	
		return sentence.split(" ");
	}
	
	public String getPos(int n){
		switch (n){
		case 1: pos= "NN";
		
		default: pos= "NN";
		
		
		}
		return pos;
	}
	public String getId(int n){
		switch (n){
		case 1: id= "I-100048";
		
		default: id= "I-100048";
		
		
		}
		return id;
	}
	public String getChapter(int n){
		switch (n){
		case 1: chapter= "I/2";
		
		default: chapter= "I/2";
		
		
		}
		return chapter;
	}
	
	public String getWord(int n){
		switch (n){
		case 1: word= "name";
		
		default: word= "name";
		
		
		}
		return word;
	}
	public String[] getTranslation(int n){
		String resp = new String("ihr Name ist Socks .");
		
		return resp.split(" ");
				
		
	}
}
