package model;

import java.util.HashSet;
import java.util.Random;
import java.util.Set;
import java.util.UUID;

public class Utils {


	    public static final int SET_SIZE_REQUIRED = 10;
	    public static final int NUMBER_RANGE = 100;

	    public static String generateUUID(){
	    	UUID uuid = UUID.randomUUID();
	    	String s = Long.toString(uuid.getMostSignificantBits(), 36) + '-' + Long.toString(uuid.getLeastSignificantBits(), 36);
	    	return s;

	    }
	    
	    public static String generateId()
	    {
	        Random random = new Random();

	        Set<Integer> set = new HashSet<Integer>(SET_SIZE_REQUIRED);

	        while(set.size()< SET_SIZE_REQUIRED) {
	            while (set.add(random.nextInt(NUMBER_RANGE)) != true)
	                ;
	        }
	        assert set.size() == SET_SIZE_REQUIRED;
	        return set + "";
	    }
	}
