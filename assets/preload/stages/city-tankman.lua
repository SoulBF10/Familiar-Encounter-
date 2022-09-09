function onCreate()
	makeLuaText('Watermarc', "PORT ZIP POR PEREZ SEN | APK PORT POR BOYFRIENDSOULEVIL ", 0, 2, 700); 
	setTextSize('Watermarc', 20);
	setObjectCamera('Watermarc', 'other');
	addLuaText('Watermarc', true);

	makeAnimatedLuaSprite('perez sen','perez sen',-450,-300)
	addAnimationByIndices('perez sen', 'idle', 'perez luces','0,1,2,3,4,5',1)
	setLuaSpriteScrollFactor('perez sen', 0.5, 0.4);
	scaleObject('perez sen', 0.9, 1.0)
	addLuaSprite('perez sen', false);


	makeLuaSprite('sky1', 'sky1', -450, -280);
	scaleObject('sky1', 0.9, 1.0)
	setLuaSpriteScrollFactor('sky1', 0.5, 0.4);
	addLuaSprite('sky1', false);
	precacheImage('sky1')


	if not lowQuality then
	makeLuaSprite('litterally everything else', 'litterally everything else', -520, -178);
	scaleObject('litterally everything else', 1.0, 1.0)
	addLuaSprite('litterally everything else', false);
	precacheImage('litterally everything else')


	makeLuaSprite('bars', 'bars', 0, -30);
	scaleObject('bars', 0.35, 0.35);
	setObjectCamera('bars', 'hud');
	setProperty('bars.antialiasing', false);
	addLuaSprite('bars', true);
	setProperty('baars.alpha', 0.2);
	precacheImage('bars')
	end
	function onCreatePost()

		setProperty('gf.visible',false)
	end
	function onBeatHit()
		if curBeat % 2== 1 then
		objectPlayAnimation('perez sen', 'idle', false);	
     end
   end
end