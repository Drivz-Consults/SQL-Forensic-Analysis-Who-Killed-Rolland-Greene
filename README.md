# SQL-Forensic-Analysis-Who-Killed-Rolland-Greene
INVESTIGATION REPORT ON THE MURDER OF ROLAND GREENE

INTRODUCTION
On the evening of June 1st, 2025, Roland Greene, a well-known art collector, was found dead in the vault room of his private residence at 8 PM, not long after receiving a call at 7:55 pm. The nature and timing of the events surrounding his death suggest premeditation and the involvement of a known party.
Authorities have identified 30 suspects, all of whom have provided alibis. However, the validity of the alibi claims remains uncertain. To aid investigation, four datasets have been provided for analysis:
●	Call Logs - Records of all calls made by the suspects around the time of the murder.
●	Suspect file - Details and alibis of each suspect, their role, and their relation to the victim.
●	Access Logs - Digital records showing the movement of suspects on the property for that evening.
●	Forensics Events - Records showing key events that happened around the time of the murder.

PROBLEM STATEMENT
The objective of this investigation is to employ data analysis to solve the murder case by:
●	Identifying the top three suspects based on behavioural patterns, access to the crime scene, and forensic evidence.
●	Determine which suspects have false or unverifiable alibis
●	Analyzing lapses between access logs and alibi claims to detect deception.
●	Assessing how each data source confirms or contradicts others, to visualize key events leading up to the crime.
The findings presented in this report are derived entirely from the available datasets using SQL-based querying and deductive reasoning. All insights are supported by empirical evidence, which ensures objectivity in the investigative process.

METHODOLOGY
To uncover the identity of the suspect, this investigation employed a multi-step approach. This involved querying and cross-referencing the four available datasets using SQL to assess critical timelines, validate or disprove alibis, and create connections between suspects, the crime scene and the victim.
1.	Temporal time reference
	The victim’s time of death (8 pm), last phone call (7:55 pm), time last seen alive (7:57 pm), and crime scene (vault room) served as temporal anchors for filtering and querying activity logs.
2.	Victim-suspect relationship
Evaluated the relationship of each suspect to the victim to establish suspects with probable cause. Rivals, business partners, and former partners were treated as highly suspicious suspects, especially if their alibis were false.
3.	Alibi Validation
●	Compared the alibis of all suspects in each relationship group to access logs to see whose movements matched the critical time window (7:55 PM to 8:05 PM).
●	Flagged suspects whose alibi location conflicted with access logs around the time of the murder.
4.	Access Log Correlation
●	Queried access logs to identify suspects who accessed the crime scene shortly before or after the murder (7:55 PM to 8:05 PM).
●	Cross-referenced query results against alibi claims to detect inconsistencies or contradictions.
5.	Forensics Events Correlation
Cross-referenced critical events recorded on the forensics table with access and call logs to narrow down suspects whose activities coincided with such timeframes.
6.	Contradiction Detection
Identified suspects who had conflicting alibis, had alibis during the critical window, but whose activities pointed to their presence at the crime scene or areas relating to the crime.
Findings
This section presents the results of the SQL-based investigation structured around the central objective: identifying the top three suspects in the murder of Roland Greene. Findings are structured according to each analysis step and how the data sources confirmed or contradicted each other.
1.	Relationship-based motive
	All 30 suspects are grouped based on their relationship with the victim. The categories included: friend, relative, former partner, business partner, stranger, staff, investor, employee, guest, rival. Suspects that were flagged in the rival category were suspected as people with high motive. The same process was repeated for business partners, former partners, staff, and other categories. Victor Shaw, Robin Ahmed, and Jamie Bennett were identified as suspects within these groups. Shaw and Ahmed, due to their rivalry and prior business association with the victim, were considered to have the most probable cause.
2.	Alibi Validation
Cross-referencing suspects' alibis with the critical time window (7:55 PM - 8:05 PM) revealed that 3 suspects had alibis that conflicted with access logs. These suspects were prioritized for further investigation.
3.	Access to Crime Scene
Analysis of the access logs revealed:
●	3 suspects accessing the crime scene at different times shortly before and after the murder. 
●	These three suspects also appeared on the list of suspects with relationship-based motives and claimed alibis at different locations.
4.	Forensic Events Correlation
Cross-referencing of forensics events and other access logs revealed:
7:57 PM: The victim was last seen alive by Robin Ahmed since he accessed the vault room at 7:56 PM.
8:00 PM: A gunshot was heard at this time and was immediately followed by a call placed by Alex Shaw 33 seconds later.
8:01:15 PM: Movement was detected in the vault hallway. This could indicate individuals responding to the gunshot, or it may indicate Jamie Bennett’s presence, potentially making him a witness or accessory to murder.
8:03 PM: Security feed was cut. It was assumed that security controls are likely to be located in the office; hence, Susan Knight could be a person of interest since her movements recorded on the access log show she accessed the office at 8:02 PM before the security feed was cut off.
8:05:45PM: An emergency call was made from the mansion. The identity of the caller remains unknown as no suspect was recorded making a call at the time, or the relevant records are missing.
5.	How Data Sources Interact
The different data sources confirm one another by providing additional information to support or counter findings. For instance, alibis obtained from the suspects table were confirmed or refuted based on information obtained from access logs; likewise, information derived from the forensics events table was looked into using the call logs, access logs, and suspects table to determine who did what and when.
Collectively, these four data sources linked suspects physically to the crime scene and highlighted those who had motive, means, opportunity, and aided and abetted.

6.	Insights
Through cross-reference analysis of the provided datasets, four suspects most likely to have been involved in the murder of Roland Greene have been identified in this investigation.
The data reveals deception. Some suspects provided alibis, which, upon closer inspection, conflicted with access logs and forensics events. The following individuals emerged as the top four suspects:
Victor Shaw
●	Rival of the victim
●	Conflicting alibi
●	Accessed the crime scene within the critical window
Robin Ahmed
●	Former business partner of the victim
●	Currently the victim’s family doctor.
●	Claimed to have left early but accessed the crime scene and is believed to have been the last person to have seen the victim alive.
	Jamie Bennett
●	Staff to the victim
●	Conflicting alibi
●	Present at the crime scene within the critical window
	Susan Knight
●	Investor and curator
●	Accessed the office shortly before the security feed was cut
Murder Theory
The theory deduced from the findings of the investigation presents the victim’s death as a result of coordinated efforts of the 4 suspects, with Victor Shaw being the mastermind. The forensics timeline paired with evidence obtained via access logs of the suspects, suggests premeditation and pre-assigned roles for each of them.
Victor Shaw
Having been established as the suspect’s rival, coupled with a conflicting alibi, it’s quite clear Shaw had probable cause, which could have been as a result of a deal gone bad, making him seek revenge. His role in the conspiracy was to ensure a successful execution and confirm the victim’s death.
Robin Ahmed
Ahmed, being the family doctor, is arguably the murderer and could easily pass under the radar. His motive is subject to scrutiny since he also doubles as a former partner of the victim. The victim was last seen alive at 7:57 PM, and access logs show Ahmed accessing the murder scene seconds before then, putting him close to the victim minutes before the gunshot was heard.
Jamie Bennett
Jamie’s role was to throw off the scent by misdirecting and confusing things. His access to the crime scene from the office shortly after the gunshot was heard may have seemed like an innocent reaction, but given the context of the conspiracy, it takes on a new meaning, becoming a deliberate one. Jamie likely played a calculated role, creating a false narrative to divert attention and possibly delay immediate response, giving the perpetrator and accomplices time to cover their tracks. This is significant, given that in the forensics events, the emergency call was not placed until 8:05 PM.
Susan Knight
Susan’s task was to cut the security feed, precisely to prevent Victor Shaw from being recorded accessing the crime scene to confirm the victim’s death. The security feed was cut at 8:03 PM, before which Susan accessed the office where the controls are. This happened after the gunshot and Jamie’s movement, suggesting coordinated efforts to erase evidence after the primary event.

CONCLUSION
When the individual actions of the suspects are not seen as separate events but as sequential events, a bigger picture unfolds. Ahmed's timely proximity to the victim, Jamie's movement along the vault room hallway, and Susan's disabling of the security feed all point to a coordinated effort. Together, these suspects acted under the directive of Victor Shaw.



