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

local Light = game.Workspace.Part.Light -- Replace 'Light' with the name of your light object
local FlickerDuration = 0.1 -- Adjust the duration of each flicker (in seconds)
local FlickerIntensity = 40 -- Adjust the intensity of the light flickering
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

local function flickerLight(morseCode)
	for i = 1, #morseCode do
		local char = string.sub(morseCode, i, i)
		if char == "." then
			Light.Brightness = FlickerIntensity
			wait(FlickerDuration)
			Light.Brightness = 0 -- Turn off the light after flickering a dot
			wait(FlickerDuration) -- Pause after flickering a dot
		elseif char == "-" then
			Light.Brightness = FlickerIntensity
			wait(FlickerDuration * 3)
			Light.Brightness = 0
			wait(FlickerDuration)
		elseif char == " " then
			wait(FlickerDuration * 3)
		elseif char == "/" then
			wait(FlickerDuration * 7)
		end
	end
end

local function startConversion()
	while true do
		local textToConvert = "hello world" -- Replace with your desired text input
		local morseCode = convertToMorseCode(textToConvert)
		print("Text to convert:", textToConvert)
		print("Morse code:", morseCode)
		flickerLight(morseCode)
		wait(ConversionInterval)
	end
end

startConversion()