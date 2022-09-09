function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Instakill Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'GF Sing' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'NoNOTE_assets'); --Change texture

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); --Miss has no penalties
			end
		end
	end
	--debugPrint('Script started!')
end


local healthDrain = 0;
function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'GF Sing' then
		playSound('Absorb', 0.7);
		-- bf anim
		characterPlayAnim('boyfriend', 'hurt', false);
		setProperty('boyfriend.specialAnim', false);

	end
end
