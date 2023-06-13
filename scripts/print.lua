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

local function startConversion()
    local textToConvert = "hello world" -- Replace with your desired text input
    local morseCode = convertToMorseCode(textToConvert)
    print("Text to convert:", textToConvert)
    print("Morse code:", morseCode)
end

startConversion()