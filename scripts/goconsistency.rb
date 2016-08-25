m=MechSystem.all
m2 = []
m.each {|ms|
	if (ms.acquisition_workflow==nil and not(ms.system.is_part_of_acquired) and not(ms.system.parent.is_part_of_atomic) ) then
		m2 << ms
	end
}

print "Initial inconsistent "+m2.size.to_s+"\n"
m2.each {|m2s|
	print m2s.to_s+"\n"
}

=begin
m2.each {|m2s|
	m2sm=m
	m2sm.each{|m2sms|
		if (m2sms!=m2s and m2sms.acquisition_workflow!=nil) then
			if (m2sms.system.name==m2s.system.name) then
				m2s.acquisition_workflow=m2sms.acquisition_workflow
				m2s.acquisition_status=m2sms.acquisition_status
				m2s.save
				print "Arreglamos consistencia: "+m2s.to_s+" --> "+m2sms.acquisition_workflow.to_s+"\n"
			end
		end
	}
}

m=MechSystem.all
m2 = []
m.each {|ms|
	if (ms.acquisition_workflow==nil and not(ms.system.is_part_of_acquired) and not(ms.system.parent.is_part_of_atomic) ) then
		m2 << ms
	end
}

print "Final inconsistent "+m2.size.to_s+"\n"
=end
