local MorseCode = {
	["A"] = ".-",
	["B"] = "-...",
	["C"] = "-.-.",
	["D"] = "-..",
	["E"] = ".",
	["F"] = "..-.",
	["G"] = "--.",
	["H"] = "....",
	["I"] = "..",
	["J"] = ".---",
	["K"] = "-.-",
	["L"] = ".-..",
	["M"] = "--",
	["N"] = "-.",
	["O"] = "---",
	["P"] = ".--.",
	["Q"] = "--.-",
	["R"] = ".-.",
	["S"] = "...",
	["T"] = "-",
	["U"] = "..-",
	["V"] = "...-",
	["W"] = ".--",
	["X"] = "-..-",
	["Y"] = "-.--",
	["Z"] = "--..",
	["0"] = "-----",
	["1"] = ".----",
	["2"] = "..---",
	["3"] = "...--",
	["4"] = "....-",
	["5"] = ".....",
	["6"] = "-....",
	["7"] = "--...",
	["8"] = "---..",
	["9"] = "----.",
	[" "] = "/"
}

local BeepSound = game.Workspace.Part.Sound -- Replace 'Sound' with the name of your sound object
local DotDuration = 0.1 -- Adjust the duration of a dot beep (in seconds)
local DashDuration = DotDuration * 3 -- Duration of a dash beep is three times the dot duration
local BeepPitch = 2 -- Adjust the pitch of the beep sound
local ConversionInterval = 10 -- Adjust the interval between conversions (in seconds)

local function convertToMorseCode(text)
	text = text:upper()
	local result = ""
	for i = 1, #text do
		local char = string.sub(text, i, i)
		local morseChar = MorseCode[char]
		if morseChar then
			result = result .. morseChar .. " "
		end
	end
	return result
end

local function playBeep(duration)
	BeepSound.TimePosition = 0
	BeepSound.PlaybackSpeed = BeepPitch
	BeepSound:Play()
	wait(duration)
	BeepSound:Stop()
end

local function flickerMorseCode(morseCode)
	for i = 1, #morseCode do
		local char = string.sub(morseCode, i, i)
		if char == "." then
			playBeep(DotDuration)
			wait(DotDuration) -- Pause after playing a dot beep
		elseif char == "-" then
			playBeep(DashDuration)
			wait(DotDuration) -- Pause after playing a dash beep
		elseif char == " " then
			wait(DotDuration * 3) -- Pause for word separator
		elseif char == "/" then
			wait(DotDuration * 7) -- Pause for space separator
		end
	end
end

local function startConversion()
	while true do
		local textToConvert = "Hello, World!" -- Replace with your desired text input
		local morseCode = convertToMorseCode(textToConvert)
		flickerMorseCode(morseCode)
		wait(ConversionInterval)
	end
end

startConversion()