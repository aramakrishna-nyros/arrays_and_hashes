attractions = ["Banqueting House", "Banqueting House (New)", "Hampton Court Palace", "Hampton Court Palace (New)", "Harry Potter", "Kensington Palace", "Kensington Palace (New)", "London Dungeons (New)", "London Eye", "London Eye (New)", "London Eye - River Cruise", "London Eye - River Cruise (New)", "London Sealife Aquarium", "London Sealife Aquarium (New)", "Madame Tussauds", "Madame Tussauds (New)", "Ripley's Believe It or Not!", "Ripleys Believe it or Not (New)", "Shakespeare's Globe", "Shakespear's Globe (New)", "SLA + BTST", "St Pauls Cathedral", "The London Dungeon", "The London Dungeons (Hostel)", "Thorpe Park", "Tower of London", "Tower of London (New)", "ZSL London Zoo", "ZSL London Zoo (New)"]

schools = ["ABC School", "Active Learning", "AIU", "Avalon School", "Bell Worldwide", "Bloomsbury International", "Bristish Study Centres", "BSC Oxford", "Burlington School", "Callan", "Central School", "Central School of Speech & Drama", "Cicero Languages International", "David Game", "Delfin School", "EC English", "EF", "EF Torquay", "ELT", "Embassy CES", "English Studio", "Eurocenter VIC", "EuroCentres Lee Green", "Excel English", "Frances King", "Greenwich Student Life", "Info Londres Ltd", "International House", "ISIS Group", "Islington Centre of English", "Juan Carlos", "Kaplan Cambridge", "Kaplan Covent Garden", "Kaplan Leicester Square", "Kaplan Oxford", "Kaplan Rusell Square", "King Street", "LAL London", "Language In London", "Language Link", "Languages 247", "Leicester Sq", "Lexis School of Languages", "London Metropolitain, LC105c", "London School of English", "London Study Centre", "LSBF", "LSBF 2", "LSE", "LSI Central", "LSI Hampstead", "Malvern House Kings Cross", "Mayfair School", "nyros", "Nyros", "Oxford House", "Princes College", "Regent London", "Rose of York", "Shane Global", "South Thames College", "Stafford House", "Stanton", "St George International", "St.Giles Central", "St Gilles Highgate", "Take Group", "TTI School", "Twin", "United International College", "University of the Arts London", "Williams College", "Wimbledon School"]

relation = {
	"Madame Tussauds"=>{"ABC School"=>"1", "Bloomsbury International"=>"3", "Burlington School"=>"17", "English Studio"=>"28", "EuroCentres Lee Green"=>"5", "Frances King"=>"25", "International House"=>"11", "Kaplan Cambridge"=>"2", "Kaplan Covent Garden"=>"12", "Kaplan Leicester Square"=>"14", "LSBF"=>"2", "LSI Hampstead"=>"13", "Stanton"=>"9", "St.Giles Central"=>"20", "TTI School"=>"2", "United International College"=>"43"},

 "St Pauls Cathedral"=>{"Bloomsbury International"=>"24"},

 "London Dungeons (New)"=>{"Burlington School"=>"4", "Frances King"=>"5", "Kaplan Cambridge"=>"2", "LSI Hampstead"=>"4", "St George International"=>"8"},
 
 "London Eye"=>{"English Studio"=>"3", "Eurocenter VIC"=>"4", "EuroCentres Lee Green"=>"10", "Frances King"=>"6", "International House"=>"15", "Kaplan Cambridge"=>"2", "Kaplan Covent Garden"=>"24", "Kaplan Leicester Square"=>"26", "LSBF"=>"8", "LSI Central"=>"1", "LSI Hampstead"=>"7", "Stanton"=>"10", "St.Giles Central"=>"10", "St Gilles Highgate"=>"4", "United International College"=>"32"},
 
 "London Eye - River Cruise"=>{"Eurocenter VIC"=>"4"},

  "Tower of London (New)"=>{"Eurocenter VIC"=>"3", "Frances King"=>"5", "LSBF"=>"6", "LSI Hampstead"=>"13", "Stanton"=>"10", "St.Giles Central"=>"10"},
 
 "London Sealife Aquarium"=>{"EuroCentres Lee Green"=>"2", "International House"=>"3", "Kaplan Leicester Square"=>"4", "LSBF"=>"2", "TTI School"=>"2", "United International College"=>"3"},
 
"Banqueting House (New)"=>{"Frances King"=>"2"},
  
"Kensington Palace (New)"=>{"Frances King"=>"1", "LSI Hampstead"=>"8"},
   
"ZSL London Zoo"=>{"International House"=>"2", "Kaplan Leicester Square"=>"8"},
    
"Ripley's Believe It or Not!"=>{"Kaplan Covent Garden"=>"2"}, 

"Shakespeare's Globe"=>{"Kaplan Covent Garden"=>"4", "St.Giles Central"=>"2"},

"Hampton Court Palace (New)"=>{"Stanton"=>"10"}
}

sch_val = schools.join("\t")
print "\t\t\t\t\t\t\t\t\t\t"+sch_val

attractions.each do |f_name|
	relation.each do |k,v|
		if k == f_name
			puts "\n"
			print "#{k.ljust(40)}"
			schools.each do |s_name|
				v.each do |k1,v1|
					if k1 == s_name
						print "#{v1}"
					else
						print "  *  "
					end
				end
			end
		end
	end
end

