/**
 * 
 */
package com.shdental.screencontroller;

/**
 * @author dolph
 *
 */
public class TreatmentPlanView {

	public String computeTotalCost(String cost, String units)
	{
		if (cost == null || units == null) 
		{
			return "";
		}
		
		int totalCost = Integer.valueOf(cost) * Integer.valueOf(units);
		
		return Integer.toString(totalCost);
	}
}
