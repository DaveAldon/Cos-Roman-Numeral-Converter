Class RomanNumerals.RomanNumerals Extends %Persistent
{

/// Takes in a string or a dynamic array of strings, and converts them to roman numerals.
/// Works up to 3,999.
/// If you pass in a dynamic array, you will receive a dynamic array full of the converted numbers.
ClassMethod Translate(val) As %String
{
	try {
    // Checks for var type, just spits out result if a string
		if $classname(val) '= "%Library.DynamicArray" return ..InternalTranslate(val)
		set mediator = []
		set val = val.%GetIterator()
		while val.%GetNext(.key, .value) {
			do mediator.%Push(..InternalTranslate(value))
		}
	}
	catch(e) {
		w e.Name	
	}
	return mediator
}

// Internal function that is run by the main translator
ClassMethod InternalTranslate(val As %String) As %String
{
	try {
		set converted = ""
    // Prep for conversion. Makes a string of I's equal to length of number
		for x=1:1:val {
			set converted = converted_"I"
		}
		
    // Roman numeral conversion process
		set converted = $REPLACE(converted,"IIIII", "V")
		set converted = $REPLACE(converted,"IIII","IV")
		set converted = $REPLACE(converted,"VV","X")
		set converted = $REPLACE(converted,"VIV", "IX")
		set converted = $REPLACE(converted,"XXXXX", "L")
		set converted = $REPLACE(converted,"XXXX", "XL")
		set converted = $REPLACE(converted,"LL", "C")
		set converted = $REPLACE(converted,"LXL", "XC")
		set converted = $REPLACE(converted,"CCCCC", "D")
		set converted = $REPLACE(converted,"CCCC", "CD")
		set converted = $REPLACE(converted,"DD", "M")
		return $REPLACE(converted,"DCD", "CM")
	}
	catch(e) {
		return e.Name	
	}
}
}
