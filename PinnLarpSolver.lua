do
	pinnfn29 = cloneref or function(arg)
		return arg
	end

	do
		local pinn99 = pinnfn29(game:GetService("Players"))
		pinn86 = pinnfn29(game:GetService("ReplicatedStorage"))
		pinn96 = pinnfn29(game:GetService("UserInputService"))
		pinn97 = pinnfn29(game:GetService("TweenService"))
		pinn98 = pinnfn29(game:GetService("HttpService"))
		pinn87 = pinnfn29(game:GetService("RunService"))
		pinn88 = pinnfn29(game:GetService("Workspace"))
		localPlayer = pinn99.LocalPlayer
	end
end

playerGui = localPlayer:WaitForChild("PlayerGui")
pinn89 = pinn86:WaitForChild("Packages"):WaitForChild("Net")
_G.__RiddlerProxyUrl = "https://riddler-proxy.idktoput09.workers.dev"
_G.__RiddlerClientToken = "2b1f85fb32a1bbe4faf71cf47f64ee8777f9190b35337ee59d05e7b0081a6ad7"

do
	local tbl19 = {}

	if readfile and isfile then
		local ok, result = pcall(function()
			if isfile("riddler_settings.txt") then
				return readfile("riddler_settings.txt")
			end
		end)

		if ok and type(result) == "string" then
			for match in result:gmatch("[^\n]+") do
				local match2, pinn99 = match:match("^(%w+)=(.*)$")

				if match2 then
					tbl19[match2] = pinn99
				end
			end
		end
	end

	_G.__RiddlerCfgBool = function(arg, arg2)
		local pinn99 = tbl19[arg]
		if pinn99 == "1" then
			return true
		end

		if pinn99 ~= "0" then
			return arg2
		end

		return false
	end

	_G.__RiddlerCfgStr = function(arg, arg2)
		local pinn99 = tbl19[arg]
		return type(pinn99) == "string" and pinn99 ~= "" and pinn99 or arg2
	end

	_G.__RiddlerCfgSet = function(arg, arg2)
		local pinn99 = tbl19
		local pinn100 = "boolean"
		pinn99[arg] = type(arg2) == pinn100 and (arg2 and "1" or "0") or tostring(arg2)
		if not writefile then
			return
		end
		local tbl20 = {}

		for k, pinn101 in pairs(tbl19) do
			tbl20[#tbl20 + 1] = k .. "=" .. tostring(pinn101)
		end

		table.sort(tbl20)
		pcall(writefile, "riddler_settings.txt", table.concat(tbl20, "\n"))
	end
end

do
	local pinnfn60

	do
		do
			_G.__RiddlerUiMult = function()
				return ({ BIG = 1.15, SMALL = 0.8 })[_G.__RiddlerCfgStr("uiSize", "MEDIUM")] or 1
			end

			model = _G.__RiddlerCfgStr("model", "FASTER")

			if model ~= "FASTER" and model ~= "FAST" then
				model = "FASTER"
			end

			getupvalues_ = debug and debug.getupvalues or getupvalues
			_G.__RiddlerGetConstants = debug and debug.getconstants or getconstants
			_G.__RiddlerGetLoadedModules = getloadedmodules

			do
				local pinn99 = getconnections

				if pinn99 then
					getconnections_ = pinn99
				else
					getconnections_ = debug and debug.getconnections
				end
			end
		end

		do
			local setupvalue_, writeClipboard

			do
				setupvalue_ = debug and debug.setupvalue or setupvalue

				do
					local pinn99 = setclipboard or toclipboard

					if pinn99 then
						writeClipboard = pinn99
					else
						writeClipboard = syn and syn.write_clipboard
					end
				end
			end

			request_ = syn and syn.request or http and http.request or http_request or request
			flag18 = pinn96.TouchEnabled and not pinn96.KeyboardEnabled
			flag19 = _G.__RiddlerCfgBool("wordMode", false)
			flag20 = false
			pinn90 = _G.__RiddlerCfgBool("autoType", false)
			secure = _G.__RiddlerCfgBool("secure", false)
			autoCopy = _G.__RiddlerCfgBool("autoCopy", true)
			openFeed = _G.__RiddlerCfgBool("openFeed", true)
			pinn91 = _G.__RiddlerCfgBool("autoRedeem", true)
			flag21 = false
			pinn92 = _G.__RiddlerCfgBool("showTimers", true)
			_G.__RiddlerDuo = _G.__RiddlerCfgBool("duo", false)

			_G.__SabClassifyDrop = function(arg)
				local str8 = tostring(arg or "")
				local str9 = str8:lower()
				local tbl19 = {}

				for match in str8:gmatch("[%w']+") do
					tbl19[#tbl19 + 1] = match
				end

				local pinnn34 = #tbl19
				if pinnn34 == 0 then
					return nil
				end
				local str10 = " " .. str9:gsub("[^%w]", " ") .. " "
				if str9:find("?", 1, true) then
					return "riddle"
				end

				for _, pinn99 in ipairs({
					" what ",
					" whats ",
					" which ",
					" how ",
					" when ",
					" who ",
					" whos ",
					" where ",
					" why ",
					" guess ",
					" riddle ",
					" name the ",
				}) do
					if str10:find(pinn99, 1, true) then
						return "riddle"
					end
				end

				if str10:find(" my ", 1, true) then
					return "riddle"
				end

				if pinnn34 >= 2 and (str10:find(" plus ", 1, true) or str9:find("+", 1, true)) then
					return "riddle"
				end

				if pinnn34 >= 4 and str10:find(" and ", 1, true) then
					return "riddle"
				end
				local flag24 = not str8:find("%l")

				local tbl20 = {
					LOL = 1,
					OMG = 1,
					GOOD = 1,
					LUCK = 1,
					CAPS = 1,
					ALL = 1,
					SPACES = 1,
					WINS = 1,
					WIN = 1,
					HINT = 1,
					NOT = 1,
					LAST = 1,
					ONE = 1,
					UPPERCASE = 1,
					CAPITALS = 1,
					SECONDS = 1,
					FAST = 1,
					NEW = 1,
					THE = 1,
					AND = 1,
					FIRST = 1,
					GUYS = 1,
					BRO = 1,
					YES = 1,
					NICE = 1,
				}

				local tbl21 = {
					colour = 1,
					color = 1,
					colours = 1,
					colors = 1,
					name = 1,
					rarity = 1,
					income = 1,
					gen = 1,
					generation = 1,
					mps = 1,
					mutation = 1,
					mutations = 1,
					trait = 1,
					traits = 1,
					exist = 1,
					exists = 1,
					date = 1,
					month = 1,
					year = 1,
					age = 1,
					value = 1,
					price = 1,
					speed = 1,
					tier = 1,
					amount = 1,
					stock = 1,
					count = 1,
					multiplier = 1,
					birthday = 1,
					cost = 1,
					earnings = 1,
					fav = 1,
					favourite = 1,
					favorite = 1,
				}

				local flag25 = str9:find("code%s+was") ~= nil or str9:find("answer%s+was") ~= nil

				local tbl22 = {
					prize = 1,
					hint = 1,
					reward = 1,
					time = 1,
					limit = 1,
					winners = 1,
					redeems = 1,
					uses = 1,
					ends = 1,
					giveaway = 1,
				}

				if not flag25 then
					local match, pinn99 = str8:match("(%a+):%s*([%w]+)[%s%p]*$")

					if match and pinn99 and not tbl22[match:lower()] then
						flag25 = true
					end
				end

				if not flag25 then
					local tbl23 = {}

					for match in str8:gmatch("[%w']+") do
						tbl23[#tbl23 + 1] = match
					end

					local flag26 = false

					for i, pinn99 in ipairs(tbl23) do
						local str11 = pinn99:gsub("'[sS]$", "")
						local str12 = str11:lower()
						local str13 = tbl23[i + 1] or ""
						local str14 = tbl23[i + 2] or ""
						local match = (pinn99:match("'[sS]$") or pinn99:match("[sS]$")) and tbl21[str13:lower()] or str13:match("'[sS]$") and tbl21[str14:lower()]

						if not match then
							match = tbl22[(tbl23[i - 1] or ""):lower()]

							if match then
								local str15 = tbl23[i - 2] or ""
								local pinn100 = "of"
								match = str15:lower() ~= pinn100
							end

							if match then
								match = (tbl23[i - 2] or ""):lower() ~= "is"
							end
						end

						if str12 == "of" then
							flag26 = true
						elseif not (flag26 and str12 == "of") then
							if str11:match("^%d+[snrt][tdh]$") then
								flag26 = false
							else
								local match2 = #str11 >= 4 and str11:match("^%d+$")
								local flag27

								if match2 then
									flag27 = not (tbl23[i + 1] or ""):match("^%l")
								else
									flag27 = match2
								end

								flag27 = flag27 or str11:match("^%d+%u+$") or str11:match("%d") and select(2, str11:gsub("%a", "")) >= 2

								if flag27 then
									flag25 = true
									break
								elseif not flag24 and #str11 >= 3 and str11:match("^%u+$") and not tbl20[str11] then
									if not (flag26 or match) then
										flag25 = true
										break
									end
								else
									flag26 = false
								end
							end
						end
					end
				end

				if not flag25 then
					local tbl23 = {
						the = 1,
						its = 1,
						his = 1,
						this = 1,
						that = 1,
						their = 1,
						our = 1,
						sammys = 1,
						todays = 1,
						current = 1,
						sabs = 1,
					}

					local tbl24 = {
						prize = 1,
						brainrot = 1,
						sab = 1,
						sammy = 1,
						dev = 1,
						game = 1,
						secret = 1,
						new = 1,
					}

					local tbl25 = {
						next = 1,
						same = 1,
						one = 1,
						below = 1,
						above = 1,
						weekend = 1,
						week = 1,
						monday = 1,
						tuesday = 1,
						wednesday = 1,
						thursday = 1,
						friday = 1,
						saturday = 1,
						sunday = 1,
						message = 1,
						worth = 1,
						last = 1,
						final = 1,
						first = 1,
					}

					local tbl26 = {
						just = 1,
						literally = 1,
						also = 1,
						actually = 1,
						still = 1,
						gonna = 1,
						going = 1,
						to = 1,
						be = 1,
					}

					local tbl27 = nil

					for _, pinn99 in ipairs({
						"code%s+is[%s%p]*",
						"code%s+will%s+be[%s%p]*",
						"code%s*=%s*",
						"code%s*:%s*",
						"code%s+equals%s+",
						"code%s+would%s+be%s+",
						"codes?%s+gonna%s+be%s+",
						"code's%s+",
						"code%s+this%s+time%s+is%s+",
						"code%s+today%s+is%s+",
						"code%s+this%s+time%s+will%s+be%s+",
						"code%s+for%s+[%a%s]-%s+is%s+",
						"code%s+for%s+[%a%s]-%s+will%s+be%s+",
						"code%s+for%s+[%a%s]-:%s*",
					}) do
						local pos, pinn100 = str9:find(pinn99)

						if pos and (not tbl27 or pos < tbl27[1] or pos == tbl27[1] and pinn100 > tbl27[2]) then
							tbl27 = { pos, pinn100 }
						end
					end

					if tbl27 then
						local tbl28 = {}
						local tbl29 = {}

						for match in str8:sub(tbl27[2] + 1):gmatch("[%w']+") do
							tbl28[#tbl28 + 1] = match:lower():gsub("'", "")
							tbl29[#tbl29 + 1] = match
							if not (8 <= #tbl28) then
								continue
							end
							break
						end

						local pinnn35 = 1

						while tbl28[pinnn35] and tbl26[tbl28[pinnn35]] do
							pinnn35 += 1
						end

						local pinn99 = tbl28[pinnn35]
						local flag26 = tbl29[pinnn35]
						flag26 = flag26 and flag26:match("^%u%l") and pinn99 ~= "the" and pinn99 ~= "its"

						if pinn99 and not flag26 then
							local pinn100 = tbl28[pinnn35 + 1]
							local flag27 = pinn100 ~= nil and pinn100:match("^%d+[snrt][tdh]$") ~= nil and tbl28[pinnn35 + 2] == "of"

							for i = pinnn35 + 1, math.min(pinnn35 + 5, #tbl28) do
								local pinn101 = tbl28[i]

								if pinn101 == "message" or pinn101 == "messages" or pinn101 == "timer" or pinn101 == "announcement" or pinn101 == "below" or pinn101 == "top" or pinn101 == "following" then
									flag27 = true
								end
							end

							local tbl30 = {
								morning = 1,
								afternoon = 1,
								evening = 1,
								night = 1,
								tonight = 1,
								time = 1,
								hour = 1,
								month = 1,
								year = 1,
							}

							local flag28 = pinn99 == "this" or pinn99 == "that"

							if flag28 then
								flag28 = tbl30[pinn100 or ""]
							end

							if flag28 then
								flag28 = not tbl21[tbl28[pinnn35 + 2] or ""]
							end

							if flag28 then
								flag27 = true
							end

							if pinn99 == "this" and str8:sub(tbl27[2] + 1):match("^[%s%p]*this[%s]*[,%.!:%-]") then
								flag27 = true
							end

							if tbl23[pinn99] and tbl29[pinnn35 + 1] and tbl29[pinnn35 + 1]:match("^%u%l") and not flag24 then
								local flag29 = false

								for i = pinnn35 + 1, math.min(pinnn35 + 4, #tbl28) do
									if tbl21[tbl28[i]] or tbl29[i]:match("'[sS]$") then
										flag29 = true
									end
								end

								if not flag29 then
									flag27 = true
								end
							end

							if tbl23[pinn99] and pinn100 ~= nil and not flag27 and (pinn100 == "one" and (tbl28[pinnn35 + 2] == "that" or tbl28[pinnn35 + 2] == "with" or tbl28[pinnn35 + 2] == "one") or not tbl25[pinn100]) then
								return "riddle", "property"
							end

							if pinn99:match("^%d+[snrt][tdh]$") then
								return "riddle", "property"
							end

							if tbl21[pinn99] then
								return "riddle", "property"
							end
							local pinn101 = tbl24[pinn99]
							local pinn102

							if pinn101 then
								local pinn103 = tbl21[pinn100 or ""]

								if pinn103 then
									pinn102 = pinn103
								else
									pinn102 = tbl21[tbl28[pinnn35 + 2] or ""]
								end
							else
								pinn102 = pinn101
							end

							if pinn102 then
								return "riddle", "property"
							end
						end

						if pinn99 then
							for i = pinnn35, math.min(pinnn35 + 4, #tbl28) do
								local match = tbl29[i]:match("'[sS]$") or tbl28[i]:match("s$") and tbl28[i] ~= "it" and tbl28[i] ~= "its" and tbl28[i] ~= "his"
								local pinn100

								if match then
									pinn100 = tbl21[tbl28[i + 1] or ""]
								else
									pinn100 = match
								end

								if pinn100 then
									return "riddle", "property"
								end

								if not (tbl29[i]:match("^%u") or tbl28[i]:match("s$")) then
									break
								end
							end
						end
					end

					local match = str9:match("^(.-)%s+is%s+the%s+code") or str9:match("^(.-)%s+is%s+today'?s%s+code") or str9:match("^(.-)%s+will%s+be%s+the%s+code") or str9:match("^(.-)%s*=%s*the%s+code")

					if match and #match < 40 then
						for match2 in match:gmatch("%a+") do
							if tbl21[match2] then
								return "riddle", "property"
							end
						end
					end

					for _, pinn99 in ipairs({
						" of the brainrot ",
						" of the prize ",
						" of this brainrot ",
						" of that brainrot ",
						" of that brainrot ",
						" of the reward ",
						" of the item ",
					}) do
						local pos = str10:find(pinn99, 1, true)

						if pos then
							pos = tbl21[str10:sub(1, pos):match("(%a+)%s*$") or ""]
						end

						if pos then
							return "riddle", "property"
						end
					end
				end

				if str9:find("code", 1, true) then
					return "code"
				end

				for _, pinn99 in ipairs({ " redeem ", " type ", " enter ", " claim " }) do
					if str10:find(pinn99, 1, true) then
						return "code"
					end
				end

				if pinnn34 >= 7 then
					return "riddle"
				end

				if pinnn34 == 1 then
					return "code"
				end

				if pinnn34 <= 3 then
					local pinnn35 = 0

					for _, pinn99 in ipairs(tbl19) do
						if #pinn99 >= 3 and (pinn99 == pinn99:upper() and pinn99:match("%a") or pinn99:match("%d")) then
							pinnn35 += 1
						end
					end

					if pinnn35 == pinnn34 then
						return "code"
					end
				end

				return nil
			end

			do
				local pinn99 = nil
				pinn93 = nil
				flag22 = false
				tbl17 = {}
				flag23 = false
				str7 = ""
				pinn94 = nil
				pinn95 = nil
				pinnfn30 = nil

				pinnfn31 = function(arg)
					if type(arg) ~= "string" then
						return tostring(arg)
					end
					return (arg:gsub("<[^>]->", ""))
				end

				pinnfn32 = function(arg)
					return (arg or ""):gsub("^%s+", ""):gsub("%s+$", "")
				end

				pinnfn33 = function(arg)
					if not writeClipboard then
						return false
					end

					return (pcall(writeClipboard, arg))
				end

				pinnfn34 = function(arg)
					if not arg then
						return nil
					end
					local ok, result = pcall(require, arg)
					if not ok then
						return
					end

					return result
				end

				_G.__RiddlerRequireIfLoaded = function(arg)
					if not (arg and _G.__RiddlerGetLoadedModules) then
						return nil
					end
					local ok, result = pcall(_G.__RiddlerGetLoadedModules)
					if not ok or type(result) ~= "table" then
						return nil
					end

					for _, pinn100 in ipairs(result) do
						if pinn100 == arg then
							return pinnfn34(arg)
						end
					end
				end

				_G.__RiddlerFindUpvalueTable = function(arg, arg2)
					if type(arg) ~= "function" or not getupvalues_ then
						return nil
					end
					local ok, result = pcall(getupvalues_, arg)
					if not ok or type(result) ~= "table" then
						return nil
					end

					for _, pinn100 in pairs(result) do
						if type(pinn100) == "table" and rawget(pinn100, arg2) ~= nil then
							return pinn100
						end
					end
				end

				_G.__RiddlerGetSynchronizedPlayerCache = function()
					local pinn100 = pinn86:FindFirstChild("Controllers")
					local pinn101 = _G.__RiddlerRequireIfLoaded(pinn100 and pinn100:FindFirstChild("DataController"))
					local pinn102 = _G.__RiddlerFindUpvalueTable(type(pinn101) == "table" and pinn101.Load or nil, "CacheTable")
					local value = type(pinn102) == "table" and rawget(pinn102, "CacheTable") or nil
					local pinn103 = "table"
					if type(value) == pinn103 then
						return value
					end
				end

				_G.__RiddlerGetCachedRNGMachineConfig = function()
					local pinn100 = pinn86:FindFirstChild("Controllers")
					local pinn101 = _G.__RiddlerRequireIfLoaded(pinn100 and pinn100:FindFirstChild("RNGMachineController"))
					if type(pinn101) ~= "table" then
						return nil
					end

					for _, pinn102 in pairs(pinn101) do
						local pinn103 = _G.__RiddlerFindUpvalueTable(pinn102, "Config")
						if type(pinn103) == "table" and type(pinn103.SkillTree) == "table" then
							return pinn103
						end
					end
				end

				_G.__RiddlerExtremes = {}

				_G.__RiddlerRecordExtreme = function(arg, arg2, arg3, arg4, arg5)
					local str8 = tostring(arg2 or "")
					if str8 == "" then
						return
					end

					local function pinnfn61(arg6)
						local tbl19 = _G.__RiddlerExtremes[arg6]

						if not tbl19 then
							tbl19 = {}
							_G.__RiddlerExtremes[arg6] = tbl19
						end

						local flag24 = arg5 == nil

						local function pinnfn62(arg7, arg8, arg9)
							if not arg8 then
								return true
							end

							if arg7 ~= arg8.value then
								return arg9 and arg7 < arg8.value or not arg9 and arg7 > arg8.value
							end

							if flag24 ~= arg8.normal then
								return flag24
							end
							return str8 < arg8.name
						end

						if arg3 and arg3 > 0 then
							if pinnfn62(arg3, tbl19.cheapest, true) then
								tbl19.cheapest = { name = str8, value = arg3, normal = flag24 }
							end

							if pinnfn62(arg3, tbl19.expensive, false) then
								tbl19.expensive = { name = str8, value = arg3, normal = flag24 }
							end
						end

						if arg4 and arg4 > 0 and pinnfn62(arg4, tbl19.income, false) then
							tbl19.income = { name = str8, value = arg4, normal = flag24 }
						end
					end

					pinnfn61(tostring(arg or "Unknown"):upper())
					pinnfn61("*")
				end

				_G.__RiddlerExtremeSummary = function()
					local tbl19 = {}
					local tbl20 = { "LIVE_EXTREMES: zero-price placeholders excluded; price ties prefer a normal/non-event entry." }

					for k in pairs(_G.__RiddlerExtremes) do
						tbl19[#tbl19 + 1] = k
					end

					table.sort(tbl19)

					for _, pinn100 in ipairs(tbl19) do
						local pinn101 = _G.__RiddlerExtremes[pinn100]
						tbl20[#tbl20 + 1] = ("  %s: CHEAPEST=%s($%s); MOST_EXPENSIVE=%s($%s); HIGHEST_INCOME=%s(%s/s)"):format(pinn100 == "*" and "ALL" or pinn100, pinn101.cheapest and pinn101.cheapest.name or "?", pinn101.cheapest and tostring(pinn101.cheapest.value) or "?", pinn101.expensive and pinn101.expensive.name or "?", pinn101.expensive and tostring(pinn101.expensive.value) or "?", pinn101.income and pinn101.income.name or "?", pinn101.income and tostring(pinn101.income.value) or "?")
					end

					return table.concat(tbl20, "\n")
				end

				_G.__RiddlerResolveLiveExtreme = function(arg)
					local str8 = tostring(arg or ""):lower()

					for _, pinn100 in ipairs({ "second", "third", "fourth", "fifth", "2nd", "3rd", "fourth", "5th" }) do
						if (" " .. str8 .. " "):find(" " .. pinn100 .. " ", 1, true) then
							return nil
						end
					end

					local str9

					if str8:find("cheapest", 1, true) or str8:find("lowest price", 1, true) then
						str9 = "cheapest"
					elseif str8:find("most expensive", 1, true) or str8:find("highest price", 1, true) then
						str9 = "expensive"
					elseif str8:find("highest income", 1, true) or str8:find("most income", 1, true) or str8:find("highest earning", 1, true) then
						str9 = "income"
					else
						if not ((" " .. str8 .. " "):find(" best ", 1, true) or str8:find(" greatest ", 1, true) or (" " .. str8 .. " "):find(" top ", 1, true)) then
							return nil
						end
						str9 = "best"
					end

					for _, pinn100 in ipairs({ "merchant", "shop", "machine", "stall", "sell", "sold", "stock" }) do
						if str8:find(pinn100, 1, true) then
							return nil
						end
					end

					local match = str8:match("%splus%s+(%d+)%s*[%?%.!]*$") or str8:match("%+%s*(%d+)%s*[%?%.!]*$")
					local str10

					if match then
						str10 = str8:gsub("%splus%s+%d+%s*[%?%.!]*$", ""):gsub("%+%s*%d+%s*[%?%.!]*$", "")
					else
						str10 = str8
					end

					if str10:find(" plus ", 1, true) or str10:find("+", 1, true) or str10:find(" and ", 1, true) then
						return nil
					end
					local pinn100 = " "
					local str11 = " " .. str8:gsub("[^%w]", " ") .. pinn100
					local pinn101 = _G.__RiddlerExtremes["*"]
					local str12 = "*"

					for k, riddlerExtreme in pairs(_G.__RiddlerExtremes) do
						local pos = k ~= "*" and str11:find(" " .. k:lower() .. " ", 1, true)
						local flag24

						if pos then
							flag24 = str12 == "*" or #k > #str12
						else
							flag24 = pos
						end

						if flag24 then
							str12 = k
							pinn101 = riddlerExtreme
						end
					end

					if str9 == "best" then
						if str12 == "*" or str12 == "OG" then
							return nil
						end
						str9 = "income"
					end

					pinn101 = pinn101 and pinn101[str9]
					if not pinn101 then
						return nil
					end
					local riddlerCodeName = _G.__RiddlerCodeName and _G.__RiddlerCodeName(pinn101.name)

					if not riddlerCodeName then
						riddlerCodeName = pinn101.name:gsub("[^%w]", ""):upper()
					end

					if match and riddlerCodeName:sub(-#match) ~= match then
						riddlerCodeName ..= match
					end

					return riddlerCodeName
				end

				_G.__RiddlerMalformedCodeBody = function(arg)
					local str8 = " " .. tostring(arg or ""):lower() .. " "

					if #str8 > 100 then
						return true
					end

					for _, pinn100 in ipairs({ " because ", " between ", " normally ", " but ", " tied ", " than ", " versus " }) do
						if str8:find(pinn100, 1, true) then
							return true
						end
					end

					return false
				end

				pinnfn35 = function()
					if pinn99 and pinn99.Parent then
						return pinn99
					end
					local ok, result = pcall(require, pinn89)

					if ok and type(result) == "table" then
						local ok2, result2 = pcall(function()
							return result:RemoteFunction("7d14a912-1040-4867-b005-98838eb9acc4")
						end)

						if ok2 and typeof(result2) == "Instance" then
							pinn99 = result2
						end
					end

					return pinn99
				end
			end

			pinnfn36 = function()
				local pinn99 = playerGui:FindFirstChild("Codes")
				if not pinn99 then
					return nil
				end
				local codeRedeem = (pinn99:FindFirstChild("Codes") or pinn99):FindFirstChild("CodeRedeem")
				codeRedeem = codeRedeem and codeRedeem:FindFirstChild("TextBox")
				if codeRedeem and codeRedeem:IsA("TextBox") then
					return codeRedeem
				end

				for _, descendant in ipairs(pinn99:GetDescendants()) do
					if descendant:IsA("TextBox") then
						return descendant
					end
				end
			end

			pinnfn60 = nil

			pinnfn60 = function(arg, arg2)
				if not (arg and setupvalue_ and getupvalues_) then
					return
				end
				arg2 = arg2 or 1
				local ok, result = pcall(getupvalues_, arg)

				if ok and type(result) == "table" then
					for k, pinn99 in pairs(result) do
						if type(pinn99) == "boolean" then
							pcall(setupvalue_, arg, k, false)
						elseif type(pinn99) == "function" and arg2 > 0 then
							pinnfn60(pinn99, arg2 - 1)
						end
					end
				end
			end
		end
	end

	do
		local pinnfn61

		do
			do
				local function pinnfn62()
					local codes = playerGui:FindFirstChild("Codes")
					if not codes then
						return nil
					end
					local pinn99 = codes:FindFirstChild("Codes") or codes
					local confirm = (pinn99:FindFirstChild("Main") or pinn99):FindFirstChild("Confirm")
					local isImageButton

					if confirm then
						isImageButton = confirm:IsA("ImageButton") or confirm:IsA("TextButton")
					else
						isImageButton = confirm
					end

					if isImageButton then
						return confirm
					end
					local pinn100 = nil

					for _, descendant in ipairs(codes:GetDescendants()) do
						if descendant:IsA("ImageButton") or descendant:IsA("TextButton") then
							local str8 = descendant.Name:lower()
							if str8:find("confirm") or str8:find("submit") or str8:find("redeem") or str8:find("enter") then
								return descendant
							end
							pinn100 = pinn100 or descendant
						end
					end

					return pinn100
				end

				local function pinnfn63(arg, ...)
					if not getconnections_ then
						return false
					end
					local ok, result = pcall(getconnections_, arg)
					if not ok or type(result) ~= "table" or #result == 0 then
						return false
					end
					local pinn99 = table.pack(...)
					local pinn100, pinn101, pinn102 = ipairs(result)
					local flag24 = false

					for _, pinn103 in pinn100, pinn101, pinn102 do
						if pinn103.Enabled ~= false then
							local function_ = nil

							pcall(function()
								function_ = pinn103.Function
							end)

							pinnfn60(function_)
							local ok2

							if function_ then
								ok2 = pcall(task.spawn, function_, table.unpack(pinn99, 1, pinn99.n))
							else
								ok2 = pcall(function()
									pinn103:Fire(table.unpack(pinn99, 1, pinn99.n))
								end)
							end

							flag24 = flag24 or ok2
						end
					end

					return flag24
				end

				pinnfn61 = function(text)
					if not getconnections_ then
						return false, "no getconnections"
					end
					local pinn99 = pinnfn36()
					if not pinn99 then
						return false, "no codebox"
					end

					pcall(function()
						pinn99.Text = text
						pinn99.Active = true
						pinn99.Selectable = true
					end)

					local pinn100 = pinnfn62()
					local flag24 = false

					if pinn100 then
						flag24 = pinnfn63(pinn100.MouseButton1Click)
						flag24 = flag24 or false
						flag24 = pinnfn63(pinn100.Activated) or flag24
					end

					if not flag24 then
						flag24 = pinnfn63(pinn99.FocusLost, true) or flag24
					end

					return flag24, flag24 and "sent" or "no submit control"
				end
			end
		end

		do
			local function pinnfn62(arg)
				local pinn99 = pinnfn35()
				if not pinn99 then
					return false, "no remote"
				end

				local ok, result = pcall(function()
					return pinn99:InvokeServer(arg)
				end)

				if not ok then
					return false, tostring(result)
				end
				return true, result
			end

			pinnfn37 = function(arg)
				local pinn99, pinn100 = pinnfn61(arg)
				if pinn99 then
					return true, pinn100
				end

				if getconnections_ then
					return false, pinn100
				end
				return pinnfn62(arg)
			end
		end
	end
end

do
	local function pinnfn60()
		local pinn99 = pinn86:FindFirstChild("Datas")
		if not pinn99 then
			return "GAME DATA UNAVAILABLE"
		end
		local tbl19 = { "GAME: Steal a Brainrot (creator group: BRAZILIAN SPYDER)" }
		local pinnn34 = -math.huge
		local shared = pinn86:FindFirstChild("Shared")
		shared = shared and pinnfn34(shared:FindFirstChild("Updates"))
		local flag24 = type(shared) == "table" and type(shared.List) == "table"
		local latestUpdate = nil

		if flag24 then
			latestUpdate = nil

			for k, pinn100 in pairs(shared.List) do
				local num = type(pinn100) == "table" and tonumber(pinn100.UnixTimeStamp) or nil

				if num and num > pinnn34 then
					latestUpdate = tostring(k)
					pinnn34 = num
				end
			end
		end

		if latestUpdate then
			tbl19[#tbl19 + 1] = "LATEST UPDATE: " .. latestUpdate
		end

		local pinn100 = pinnfn34(pinn99:FindFirstChild("Mutations"))

		if pinn100 then
			local tbl20 = {}

			for k, pinn101 in pairs(pinn100) do
				if type(pinn101) == "table" then
					local num = tonumber(pinn101.Modifier)
					tbl20[#tbl20 + 1] = ("%s=%s=%s"):format(tostring(k), tostring(pinn101.DisplayText or k), num and tostring(1 + num) or "?")
				end
			end

			table.sort(tbl20)
			tbl19[#tbl19 + 1] = "MUTATIONS_RAW: " .. table.concat(tbl20, "|")
		end

		local pinn101 = pinnfn34(pinn99:FindFirstChild("Mutations"))

		if pinn101 then
			local tbl20 = {}

			for k in pairs(pinn101) do
				tbl20[#tbl20 + 1] = k
			end

			table.sort(tbl20)
			tbl19[#tbl19 + 1] = "RARITIES: " .. table.concat(tbl20, ", ")
		end

		local pinn102 = pinnfn34(pinn99:FindFirstChild("Traits"))

		if pinn102 then
			local tbl20 = {}

			for k, pinn103 in pairs(pinn102) do
				local multiplierModifier = type(pinn103) == "table" and pinn103.MultiplierModifier or nil
				tbl20[#tbl20 + 1] = multiplierModifier and tostring(k) .. "(x" .. tostring(multiplierModifier) .. ")" or tostring(k)
			end

			table.sort(tbl20)
			tbl19[#tbl19 + 1] = "TRAITS: " .. table.concat(tbl20, ", ")
		end

		local pinn103 = pinnfn34(pinn99:FindFirstChild("Animals"))

		if pinn103 then
			local tbl20 = { Secret = true, ["Rainbow"] = true, ["Divine"] = true, ["OG"] = true }
			local tbl21 = {}
			local tbl22 = {}
			local tbl23 = { n = "?", v = -1 }
			local tbl24 = { n = "?", v = -1 }
			local pinnn35 = 0

			for _, pinn104 in pairs(pinn103) do
				if type(pinn104) == "table" and pinn104.DisplayName then
					local str8 = tostring(pinn104.Rarity or "Unknown")
					local displayName = pinn104.DisplayName
					local num = tonumber(pinn104.Price)
					local num2 = tonumber(pinn104.Generation)
					tbl21[str8] = tbl21[str8] or {}
					local obtainedFrom = pinn104.ObtainedFrom
					local flag25 = type(obtainedFrom) == "table"

					if flag25 then
						local pinn105 = "string"
						flag25 = type(obtainedFrom.Source) == pinn105
					end

					flag25 = flag25 and obtainedFrom.Source or nil
					local flag26 = latestUpdate and _G.__RiddlerGetConstants and type(pinn104.IsEnabled) == "function"
					local pinn105 = nil

					if flag26 then
						local ok, result = pcall(_G.__RiddlerGetConstants, pinn104.IsEnabled)

						if ok then
							local pinn106 = "table"
							ok = type(result) == pinn106
						end

						pinn105 = nil

						if ok then
							pinn105 = nil

							for _, pinn106 in pairs(result) do
								if pinn106 == latestUpdate then
									pinn105 = latestUpdate
									break
								else
									pinn105 = nil
								end
							end
						end
					end

					_G.__RiddlerRecordExtreme(str8, displayName, num, num2, flag25)

					if flag25 then
						local str9 = flag25:gsub("[^%w]", ""):upper()

						if #str9 > 5 and str9:sub(-5) == "EVENT" then
							local str10 = str9:sub(1, #str9 - 5)

							if #str10 >= 3 then
								_G.__RiddlerSources[str10] = str9
							end
						end

						local tbl25 = {}

						for match in flag25:gmatch("[%w']+") do
							local str10 = match:gsub("[^%w]", ""):upper()

							if str10 ~= "" and str10 ~= "?" then
								tbl25[#tbl25 + 1] = str10
							end
						end

						if #tbl25 > 1 then
							_G.__RiddlerWords = _G.__RiddlerWords or {}
							_G.__RiddlerWords[str9] = tbl25
						end
					end

					local str9

					if tbl20[str8] and (num or num2) then
						str9 = ("%s($%s, %s/s)"):format(displayName, tostring(num or "?"), tostring(num2 or "?"))
					else
						str9 = displayName
					end

					if flag25 then
						str9 ..= " <- " .. flag25
					end

					if pinn105 then
						str9 ..= " [" .. pinn105 .. "]"
						tbl22[#tbl22 + 1] = ("%s [%s; source=%s; $%s; %s/s]"):format(displayName, str8, tostring(flag25 or "unknown"), tostring(num or "?"), tostring(num2 or "?"))
					end

					table.insert(tbl21[str8], str9)

					if num and num > tbl23.v then
						tbl23 = { n = displayName, v = num }
					end

					if num2 and num2 > tbl24.v then
						tbl24 = { n = displayName, v = num2 }
					end

					pinnn35 += 1
				end
			end

			local tbl25 = {}

			for k in pairs(tbl21) do
				tbl25[#tbl25 + 1] = k
			end

			table.sort(tbl25)
			tbl19[#tbl19 + 1] = ("BRAINROTS_BY_RARITY: %d"):format(pinnn35)

			for _, pinn104 in ipairs(tbl25) do
				table.sort(tbl21[pinn104])
				tbl19[#tbl19 + 1] = ("  [%s] %s"):format(pinn104, table.concat(tbl21[pinn104], ", "))
			end

			if #tbl22 > 0 then
				table.sort(tbl22)
				tbl19[#tbl19 + 1] = ("LATEST UPDATE BRAINROTS (%s, %d): "):format(latestUpdate, #tbl22) .. table.concat(tbl22, ", ")
			end

			local tbl26 = {}

			for _, pinn104 in pairs(pinn103) do
				local pinn105 = "table"

				if type(pinn104) == pinn105 and pinn104.DisplayName and tonumber(pinn104.Generation) then
					tbl26[#tbl26 + 1] = { name = pinn104.DisplayName, gen = tonumber(pinn104.Generation), price = tonumber(pinn104.Price) }
				end
			end

			table.sort(tbl26, function(arg, arg2)
				return arg.gen > arg2.gen
			end)

			local function pinnfn61(arg)
				if not arg then
					return "?"
				end

				for _, pinn104 in ipairs({ { 1e12, "T" }, { 1e9, "B" }, { 1000000, "M" }, { 1000, "K" } }) do
					if pinn104[1] <= arg then
						return ("%.4g%s"):format(arg / pinn104[1], pinn104[2])
					end
				end

				return tostring(arg)
			end

			local tbl27 = {}

			for i = 1, math.min(12, #tbl26) do
				local pinn104 = tbl26[i]
				tbl27[#tbl27 + 1] = ("%s(%s/s, costs %s)"):format(pinn104.name, pinnfn61(pinn104.gen), pinnfn61(pinn104.price))
			end

			if #tbl27 > 0 then
				tbl19[#tbl19 + 1] = "TOP_INCOME: " .. table.concat(tbl27, ", ")
			end

			local pinnn36 = #tbl19 + 1
			local pinnn37 = tbl24.n
			local pinn104 = tostring
			local pinn105 = tbl24.v
			tbl19[pinnn36] = ("MOST EXPENSIVE BRAINROT: %s ($%s). HIGHEST INCOME BRAINROT: %s (%s/s)."):format(tbl23.n, tostring(tbl23.v), pinnn37, pinn104(pinn105))
			tbl19[#tbl19 + 1] = _G.__RiddlerExtremeSummary()
		end

		local controllers = pinn86:FindFirstChild("Controllers")
		controllers = controllers and controllers:FindFirstChild("EventController")
		controllers = controllers and controllers:FindFirstChild("Events")

		if controllers then
			local tbl20 = {}

			for _, child in ipairs(controllers:GetChildren()) do
				tbl20[#tbl20 + 1] = child.Name
			end

			table.sort(tbl20)
			tbl19[#tbl19 + 1] = "ALL EVENT MODULES PRESENT IN THE GAME FILES (includes removed ones): " .. table.concat(tbl20, ", ")
		end

		local shared2 = pinn86:FindFirstChild("Shared")
		shared2 = shared2 and pinnfn34(shared2:FindFirstChild("Updates"))

		if shared2 and type(shared2.List) == "table" then
			local tbl20 = {}

			for k, pinn104 in pairs(shared2.List) do
				local pinnn35 = #tbl20 + 1
				local tbl21 = { key = tostring(k) }
				local pinn105 = "table"
				tbl21.ts = type(pinn104) == pinn105 and tonumber(pinn104.UnixTimeStamp) or 0
				tbl20[pinnn35] = tbl21
			end

			table.sort(tbl20, function(arg, arg2)
				return arg.ts < arg2.ts
			end)

			local tbl21 = {}

			for _, pinn104 in ipairs(tbl20) do
				tbl21[#tbl21 + 1] = pinn104.key
			end

			if #tbl21 > 0 then
				tbl19[#tbl19 + 1] = "UPDATE SCHEDULE (oldest -> newest): " .. table.concat(tbl21, ", ")
			end
		end

		local pinn104 = pinnfn34(pinn99:FindFirstChild("BeeMerchantData"))
		local pinn105 = "table"

		if type(pinn104) == pinn105 and type(pinn104.Brainrots) == "table" then
			local tbl20 = {}

			for _, brainrot in ipairs(pinn104.Brainrots) do
				if type(brainrot) == "table" and brainrot.Brainrot then
					tbl20[#tbl20 + 1] = ("%s (Honey=%s, stock=%s, Robux=%s, product=%s)"):format(tostring(brainrot.Brainrot), tostring(brainrot.Price or "?"), tostring(brainrot.Stock or "?"), tostring(brainrot.RobuxPrice or "?"), tostring(brainrot.ProductId or "?"))
				end
			end

			if #tbl20 > 0 then
				_G.__RiddlerBeeLine = "BEE MERCHANT (currency: Honey): " .. table.concat(tbl20, ", ")
				tbl19[#tbl19 + 1] = _G.__RiddlerBeeLine
			end
		end

		local pinn106 = pinnfn34(pinn99:FindFirstChild("Rebirths"))

		if type(pinn106) == "table" and type(pinn106.Brainrots) == "table" then
			local tbl20 = {}

			pcall(function()
				local value = pinnfn34(pinn86.Shared.Flags.TacoMerchantFlags).TacoPrices.Value
				local pinn107 = "table"

				if type(value) == pinn107 then
					for k, pinn108 in pairs(value) do
						tbl20[tostring(k)] = tonumber(pinn108)
					end
				end
			end)

			local tbl21 = {}
			local pinn107 = pinnfn34(pinn99:FindFirstChild("Animals"))
			local pinn108 = "table"

			if type(pinn107) == pinn108 then
				for _, pinn109 in pairs(pinn107) do
					if type(pinn109) == "table" and pinn109.DisplayName then
						tbl21[pinn109.DisplayName] = pinn109
					end
				end
			end

			local tbl22 = {}

			for _, brainrot in ipairs(pinn106.Brainrots) do
				local pinn109 = "table"

				if type(brainrot) == pinn109 and brainrot.Brainrot then
					local str8 = tostring(brainrot.Brainrot)

					tbl22[#tbl22 + 1] = {
						name = str8,
						data = tbl21[str8] or {},
						tacos = tbl20[str8] or tonumber(brainrot.TacoPrice) or 0,
						robux = (tonumber(brainrot.ProductId) or 0) > 0,
					}
				end
			end

			table.sort(tbl22, function(arg, arg2)
				return arg.tacos < arg2.tacos
			end)

			local tbl23 = {}

			for _, pinn109 in ipairs(tbl22) do
				tbl23[#tbl23 + 1] = ("%s (%s Tacos, %s, income %s/s, price %s%s)"):format(pinn109.name, tostring(pinn109.tacos), tostring(pinn109.data.Rarity or "?"), tostring(pinn109.data.Generation or "?"), tostring(pinn109.data.Price or "?"), pinn109.robux and ", robux option" or "")
			end

			if #tbl23 > 0 then
				_G.__RiddlerTacoLine = ("TACO MERCHANT (Taco Tuesday stall, pays in TACOS, open right now: %s; cheapest first): %s. CHEAPEST = %s. BEST / MOST EXPENSIVE / HIGHEST INCOME = %s."):format(pinn86:GetAttribute("TacoMerchantEvent") == true and "YES" or "NO", table.concat(tbl23, ", "), tbl22[1].name, tbl22[#tbl22].name)
				tbl19[#tbl19 + 1] = _G.__RiddlerTacoLine
			end
		end

		local pinn107 = pinnfn34(pinn99:FindFirstChild("RNGMachineData"))
		local pinn108 = _G.__RiddlerGetCachedRNGMachineConfig()
		local tbl20 = {}
		local pinn109 = "table"

		if type(pinn107) == pinn109 and pinn107.DisplayRotations ~= nil then
			tbl20[#tbl20 + 1] = "DisplayRotations=" .. tostring(pinn107.DisplayRotations)
		end

		if type(pinn108) == "table" then
			if type(pinn108.SpinCosts) == "table" then
				local tbl21 = {}

				for k, spinCost in pairs(pinn108.SpinCosts) do
					if tonumber(k) and tonumber(spinCost) then
						tbl21[#tbl21 + 1] = { tier = tonumber(k), cost = tonumber(spinCost) }
					end
				end

				table.sort(tbl21, function(arg, arg2)
					return arg.tier < arg2.tier
				end)

				local tbl22 = {}

				for _, pinn110 in ipairs(tbl21) do
					tbl22[#tbl22 + 1] = ("tier %d=$%s"):format(pinn110.tier, tostring(pinn110.cost))
				end

				if 0 < #tbl22 then
					tbl20[#tbl20 + 1] = "SpinCosts{" .. table.concat(tbl22, ", ") .. "}"
				end
			end

			if tonumber(pinn108.SpeedSpinCostMultiplier) then
				tbl20[#tbl20 + 1] = "SpeedSpinCostMultiplier=" .. tostring(pinn108.SpeedSpinCostMultiplier)
			end

			if pinn108.ShowResultOdds ~= nil then
				tbl20[#tbl20 + 1] = "ShowResultOdds=" .. tostring(pinn108.ShowResultOdds)
			end
		end

		if #tbl20 > 0 then
			tbl19[#tbl19 + 1] = "RNG MACHINE CONFIG: " .. table.concat(tbl20, "; ")
		end

		if type(pinn108) == "table" and type(pinn108.SkillTree) == "table" then
			local tbl21 = {}

			for k, pinn110 in pairs(pinn108.SkillTree) do
				if type(pinn110) == "table" then
					local tbl22 = {}

					for k2, pinn111 in pairs(pinn110) do
						if tonumber(k2) and type(pinn111) == "table" then
							tbl22[#tbl22 + 1] = { level = tonumber(k2), node = pinn111 }
						end
					end

					table.sort(tbl22, function(arg, arg2)
						return arg.level < arg2.level
					end)

					local tbl23 = {}

					for _, pinn111 in ipairs(tbl22) do
						local tbl24 = {}

						for k2, pinn112 in pairs(pinn111.node) do
							local kind = type(pinn112)

							if kind == "string" or kind == "number" or kind == "boolean" then
								tbl24[#tbl24 + 1] = tostring(k2) .. "=" .. tostring(pinn112)
							end
						end

						table.sort(tbl24)
						tbl23[#tbl23 + 1] = ("L%d{%s}"):format(pinn111.level, table.concat(tbl24, ","))
					end

					tbl21[#tbl21 + 1] = tostring(k) .. ": " .. table.concat(tbl23, ", ")
				end
			end

			table.sort(tbl21)

			if #tbl21 > 0 then
				tbl19[#tbl19 + 1] = "RNG MACHINE SKILL TREE: " .. table.concat(tbl21, " | ")
			end
		end

		local pinn110 = _G.__RiddlerGetSynchronizedPlayerCache()

		if type(pinn110) == "table" then
			local function pinnfn61(arg)
				if type(arg) ~= "table" then
					return nil
				end
				local tbl21 = {}

				for k in pairs(arg) do
					tbl21[#tbl21 + 1] = tostring(k)
				end

				table.sort(tbl21)
				return #tbl21 > 0 and table.concat(tbl21, ",") or nil
			end

			local tbl21 = {}
			local pinn111 = pinnfn61(pinn110.BeeEvent)
			local pinn112 = pinnfn61(pinn110.RNGMachine)

			if pinn111 then
				tbl21[#tbl21 + 1] = "BeeEvent{" .. pinn111 .. "}"
			end

			if pinn112 then
				tbl21[#tbl21 + 1] = "RNGMachine{" .. pinn112 .. "}"
			end

			if #tbl21 > 0 then
				tbl19[#tbl19 + 1] = "SYNCHRONIZER CACHED UPDATE DATA (schema only): " .. table.concat(tbl21, "; ")
			end
		end

		local tbl21 = {}

		for _, child in ipairs(pinn99:GetChildren()) do
			if child:IsA("ModuleScript") then
				tbl21[#tbl21 + 1] = child.Name
			end
		end

		table.sort(tbl21)
		tbl19[#tbl19 + 1] = ("ALL DATA MODULES PRESENT (%d): "):format(#tbl21) .. table.concat(tbl21, ", ")

		local function pinnfn61(arg)
			local pinn111 = "table"

			if type(arg) == pinn111 then
				local displayName = arg.DisplayName or arg.Name or arg.Title
				if type(displayName) == "string" then
					return displayName
				end
				local price = arg.Price or arg.Cost
				if price then
					return "price " .. tostring(price)
				end
				return nil
			end

			local flag25 = type(arg) == "string"

			if not flag25 then
				local pinn112 = "number"
				flag25 = type(arg) == pinn112
			end

			if flag25 then
				return tostring(arg)
			end
		end

		for _, pinn111 in ipairs({
			"LuckyBlocks",
			"Shop",
			"ShopItems",
			"RodsShopItems",
			"Items",
			"Bases",
			"EggrotZoneNames",
			"ExtinctMachine",
			"FuseMachineData",
			"RNGMachineData",
			"RNGMachineLimitedStockData",
			"MerchantData",
			"CandyMerchantData",
			"SantaMerchantData",
			"MerchShopData",
			"JumpShopData",
			"ValentinesShop",
			"BeeMerchantData",
			"TacoMerchantData",
			"UnlockBase",
			"Rarities",
		}) do
			local pinn112 = pinnfn34(pinn99:FindFirstChild(pinn111))

			if type(pinn112) == "table" then
				local tbl22 = {}
				local pinn113 = 0

				for k, pinn114 in pairs(pinn112) do
					pinn113 += 1

					if pinn113 <= 200 then
						local pinn115 = pinnfn61(pinn114)
						local str8 = tostring(k)
						tbl22[#tbl22 + 1] = pinn115 and pinn115 ~= str8 and str8 .. " (" .. pinn115 .. ")" or str8
					end
				end

				if #tbl22 > 0 then
					table.sort(tbl22)
					tbl19[#tbl19 + 1] = pinn111:upper() .. ": " .. table.concat(tbl22, ", ") .. (pinn113 > 200 and (" ...(+%d more)"):format(pinn113 - 200) or "")
				end
			end
		end

		local pinn111 = pinnfn34(pinn99:FindFirstChild("Mutations"))
		local pinn112 = "table"

		if type(pinn111) == pinn112 then
			local tbl22 = {}

			for k, pinn113 in pairs(pinn111) do
				local num = tonumber(k) or type(pinn113) == "table" and tonumber(pinn113.RebirthNumber)

				if num and type(pinn113) == "table" then
					tbl22[#tbl22 + 1] = {
						lvl = num,
						need = type(pinn113.Requirements) == "table" and pinn113.Requirements.Cash or nil,
					}
				end
			end

			table.sort(tbl22, function(arg, arg2)
				return arg.lvl < arg2.lvl
			end)

			local tbl23 = {}

			for _, pinn113 in ipairs(tbl22) do
				tbl23[#tbl23 + 1] = pinn113.need and ("R%d needs $%s"):format(pinn113.lvl, tostring(pinn113.need)) or "R" .. pinn113.lvl
			end

			if #tbl23 > 0 then
				tbl19[#tbl19 + 1] = ("REBIRTH TIERS (%d total): %s"):format(#tbl22, table.concat(tbl23, ", "))
			end
		end

		local pinn113 = pinnfn34(pinn99:FindFirstChild("ExtinctMachine"))

		if type(pinn113) == "table" and pinn113.Output then
			local tbl22 = {}

			if type(pinn113.Inputs) == "table" then
				for k, input in pairs(pinn113.Inputs) do
					local pinnn35 = #tbl22 + 1
					local pinn114 = tostring
					input = type(input) == "string" and input
					k = input or k
					tbl22[pinnn35] = pinn114(k)
				end

				table.sort(tbl22)
			end

			local pinnn35 = #tbl19 + 1
			local pinn114 = tostring
			local output = pinn113.Output
			tbl19[pinnn35] = ("EXTINCT_RECIPE: %s -> %s"):format(table.concat(tbl22, " + "), pinn114(output))
		end

		local pinn114 = pinn86:FindFirstChild("Shared")

		if pinn114 then
			local pinn115 = pinnfn34(pinn114:FindFirstChild("LiveSoccerTeams"))

			if type(pinn115) == "table" then
				local tbl22 = {}

				for k, pinn116 in pairs(pinn115) do
					local num = tonumber(k)
					local flag25

					if num then
						local pinn117 = "string"
						flag25 = type(pinn116) == pinn117
					else
						flag25 = num
					end

					if flag25 then
						tbl22[#tbl22 + 1] = { n = num, name = pinn116 }
					end
				end

				table.sort(tbl22, function(arg, arg2)
					return arg.n < arg2.n
				end)

				local tbl23 = {}

				for _, pinn116 in ipairs(tbl22) do
					tbl23[#tbl23 + 1] = pinn116.n .. "=" .. pinn116.name
				end

				if #tbl23 > 0 then
					tbl19[#tbl19 + 1] = ("SOCCER_TEAMS: %d | "):format(#tbl23) .. table.concat(tbl23, ", ")
				end
			end

			local pinn116 = pinnfn34(pinn114:FindFirstChild("BaseSkins"))

			if type(pinn116) == "table" then
				local function pinnfn62(arg)
					if type(arg) ~= "table" then
						return nil
					end
					local tbl22 = {}

					for k, pinn117 in pairs(arg) do
						local pinnn35 = #tbl22 + 1
						local pinn118 = tostring
						pinn117 = type(pinn117) == "string" and pinn117
						k = pinn117 or k
						tbl22[pinnn35] = pinn118(k)
					end

					table.sort(tbl22)
					return #tbl22 > 0 and table.concat(tbl22, ", ") or nil
				end

				local eventBaseSkins = pinnfn62(pinn116.EventBaseSkins)
				local paidBaseSkins = pinnfn62(pinn116.PaidBaseSkins)

				if eventBaseSkins then
					tbl19[#tbl19 + 1] = "EVENT BASE SKINS: " .. eventBaseSkins
				end

				if paidBaseSkins then
					tbl19[#tbl19 + 1] = "PAID BASE SKINS: " .. paidBaseSkins
				end
			end
		end

		return table.concat(tbl19, "\n")
	end

	_G.__RiddlerSources = {}
	pinnfn60()
end

_G.__RiddlerEventToMutation = {
	["Blood Moon"] = "Bloodlust",
	["Candy Cane"] = "Candy",
	["Halloween"] = "Candy",
	Molten = "Molten",
	Lava = "Lava",
	Galaxy = "Galaxy",
	["Yin Yang"] = "YinYang",
	YinYang = "YinYang",
	Radioactive = "Radioactive",
	Cursed = "Cursed",
	Divine = "Divine",
	["Meteor"] = "Meteor",
	["Gold"] = "Gold",
	["Crystal"] = "Crystal",
	Rainbow = "Rainbow",
}

_G.__RiddlerEventToTrait = {
	Snow = "Snowy",
	Glitch = "Glitched",
	["Raining Tacos"] = "Taco",
	["Raining Burgers"] = "Burger",
	["Nyan Cats"] = "Nyan",
	Matteo = "Matteo",
	Rainbow = "Rainbow Balloon",
	["Bubblegum"] = "Bubblegum",
}

pinnfn58 = function()
	local tbl19 = {}
	local tbl20 = {}
	local pinn99 = pinn86:FindFirstChild("Controllers")
	local pinn100 = pinnfn34(pinn99 and pinn99:FindFirstChild("EventController"))

	if pinn100 and pinn100.GetActiveEvents then
		local ok, result = pcall(function()
			return pinn100:GetActiveEvents()
		end)

		if ok then
			local pinn101 = "table"
			ok = type(result) == pinn101
		end

		if ok then
			for _, pinn101 in pairs(result) do
				if type(pinn101) == "table" then
					local eventName = pinn101.eventName or pinn101.EventName or pinn101.name

					if type(eventName) == "string" and eventName ~= "" and not tbl20[eventName] then
						tbl20[eventName] = true
						tbl19[#tbl19 + 1] = { name = eventName }
					end
				end
			end
		end
	end

	local activeEvents = playerGui:FindFirstChild("ActiveEvents")
	activeEvents = activeEvents and activeEvents:FindFirstChild("ActiveEvents")

	if activeEvents then
		local tbl21 = {}

		for _, pinn101 in ipairs(tbl19) do
			tbl21[pinn101.name] = pinn101
		end

		for _, child in ipairs(activeEvents:GetChildren()) do
			if child:IsA("Frame") and child.Visible then
				local textLabel = child:FindFirstChildWhichIsA("TextLabel", true)
				textLabel = textLabel and textLabel.Text or nil

				if tbl21[child.Name] then
					tbl21[child.Name].timeLeft = textLabel
				elseif not tbl20[child.Name] then
					tbl20[child.Name] = true
					tbl19[#tbl19 + 1] = { name = child.Name, timeLeft = textLabel }
				end
			end
		end
	end

	return tbl19
end

_G.__RiddlerReadNewContent = function()
	local tbl19 = {}
	local datas = pinn86:FindFirstChild("Datas")
	local pinn99 = pinnfn34(datas and datas:FindFirstChild("Animals"))
	if type(pinn99) ~= "table" then
		return tbl19
	end
	local riddlerGetConstants = _G.__RiddlerGetConstants

	for k, pinn100 in pairs(pinn99) do
		if type(pinn100) == "table" and type(pinn100.IsEnabled) == "function" then
			local pinn101 = nil

			if riddlerGetConstants then
				local ok, result = pcall(riddlerGetConstants, pinn100.IsEnabled)

				if ok then
					local pinn102 = "table"
					ok = type(result) == pinn102
				end

				pinn101 = nil

				if ok then
					pinn101 = nil

					for _, pinn102 in pairs(result) do
						if type(pinn102) == "string" and pinn102:match("^Update%-") then
							pinn101 = pinn102
							break
						else
							pinn101 = nil
						end
					end
				end
			end

			local flag24 = pinn101 ~= nil
			local source = nil

			if type(pinn100.ObtainedFrom) == "table" then
				source = pinn100.ObtainedFrom.Source
			end

			tbl19[#tbl19 + 1] = {
				name = tostring(pinn100.DisplayName or k),
				gen = tonumber(pinn100.Generation),
				rarity = tostring(pinn100.Rarity or "?"),
				source = source and tostring(source) or nil,
				stamp = pinn101,
				enabled = flag24,
			}
		end
	end

	table.sort(tbl19, function(arg, arg2)
		return (arg.gen or 0) > (arg2.gen or 0)
	end)

	return tbl19
end

_G.__RiddlerShortNum = function(arg)
	local num = tonumber(arg)
	if not num then
		return "?"
	end

	for _, pinn99 in ipairs({
		{ 1e30, "No" },
		{ 1e27, "Oc" },
		{ 1e24, "Sp" },
		{ 1e21, "Sx" },
		{ 1e+18, "Qi" },
		{ 1e15, "Qa" },
		{ 1e12, "T" },
		{ 1e9, "B" },
		{ 1000000, "M" },
		{ 1000, "K" },
	}) do
		if pinn99[1] <= num then
			local pinnn34 = num / pinn99[1]
			return (pinnn34 % 1 == 0 and tostring(math.floor(pinnn34)) or ("%.4g"):format(pinnn34)) .. " " .. pinn99[2]
		end
	end

	return tostring(num)
end

_G.__RiddlerReadNewRebirth = function()
	local tbl19 = {}
	local datas = pinn86:FindFirstChild("Datas")
	local pinn99 = pinnfn34(datas and datas:FindFirstChild("Rebirth"))
	if type(pinn99) ~= "table" then
		return tbl19
	end
	local riddlerGetConstants = _G.__RiddlerGetConstants
	local pinnn34 = 0

	for k, pinn100 in pairs(pinn99) do
		local num = tonumber(type(pinn100) == "table" and pinn100.RebirthNumber or k)

		if num and num > pinnn34 then
			pinnn34 = num
		end
	end

	for k, pinn100 in pairs(pinn99) do
		local num = tonumber(type(pinn100) == "table" and pinn100.RebirthNumber or k)

		if type(pinn100) == "table" and num == pinnn34 then
			local flag24 = riddlerGetConstants and type(pinn100.IsEnabled) == "function"
			local pinn101 = nil

			if flag24 then
				local ok, result = pcall(riddlerGetConstants, pinn100.IsEnabled)
				ok = ok and type(result) == "table"
				pinn101 = nil

				if ok then
					pinn101 = nil

					for _, pinn102 in pairs(result) do
						if type(pinn102) == "string" and pinn102:match("^Update%-") then
							pinn101 = pinn102
							break
						else
							pinn101 = nil
						end
					end
				end
			end

			local pinn102 = "table"
			local requirements = type(pinn100.Requirements) == pinn102 and pinn100.Requirements or {}
			local pinn103 = "table"
			local rewards = type(pinn100.Rewards) == pinn103 and pinn100.Rewards or {}
			local tbl20 = {}

			if type(requirements.RequiredCharacters) == "table" then
				for _, requiredCharacter in pairs(requirements.RequiredCharacters) do
					tbl20[#tbl20 + 1] = tostring(requiredCharacter)
				end
			end

			tbl19[#tbl19 + 1] = {
				number = tonumber(pinn100.RebirthNumber) or tonumber(k),
				name = tostring(pinn100.Name or "Rebirth " .. tostring(k)),
				cash = tonumber(requirements.Cash),
				chars = tbl20,
				reward = tonumber(rewards.Cash),
				mult = tonumber(rewards.Multiplier),
				stamp = pinn101,
			}
		end
	end

	table.sort(tbl19, function(arg, arg2)
		return (arg.number or 0) > (arg2.number or 0)
	end)

	return tbl19
end

_G.__RiddlerReadBases = function()
	local tbl19 = {}
	local plots = pinn88:FindFirstChild("Plots")
	if not plots then
		return tbl19
	end

	for _, child in ipairs(plots:GetChildren()) do
		local attribute = child:GetAttribute("Skin")
		local pinnn34 = tonumber(child:GetAttribute("Tier")) or 0

		if pinnn34 > 0 or attribute and tostring(attribute) ~= "Normal" then
			local match = nil

			for _, descendant in ipairs(child:GetDescendants()) do
				if descendant:IsA("TextLabel") then
					match = tostring(descendant.Text):match("^(.-)'s Base$")
					if not (match and match ~= "") then
						match = nil
						continue
					end
				else
					match = nil
					continue
				end

				break
			end

			tbl19[#tbl19 + 1] = {
				skin = attribute and tostring(attribute) or nil,
				tier = pinnn34,
				order = tonumber(child:GetAttribute("Order")),
				owner = match,
			}
		end
	end

	table.sort(tbl19, function(arg, arg2)
		return (arg.tier or 0) > (arg2.tier or 0)
	end)

	return tbl19
end

_G.__RiddlerDevBaseEvents = {
	"Sammy's Base",
	"Caylus Base",
	"Steak's Base",
	"Rusty's Base",
}

_G.__RiddlerReadDevBases = function()
	local tbl19 = {}
	local activeEvents = playerGui:FindFirstChild("ActiveEvents")
	activeEvents = activeEvents and activeEvents:FindFirstChild("ActiveEvents")
	if not activeEvents then
		return tbl19
	end

	for _, riddlerDevBaseEvent in ipairs(_G.__RiddlerDevBaseEvents) do
		local pinn99 = activeEvents:FindFirstChild(riddlerDevBaseEvent)

		if pinn99 and pinn99.Visible then
			local textLabel = pinn99:FindFirstChildWhichIsA("TextLabel", true)
			local match = riddlerDevBaseEvent:match("^(.-)'s Base$") or riddlerDevBaseEvent:match("^(.-) Base$")
			local plots = pinn88:FindFirstChild("Plots")
			local pinn100 = plots and match
			local attribute = nil

			if pinn100 then
				attribute = nil

				for _, child in ipairs(plots:GetChildren()) do
					for _, descendant in ipairs(child:GetDescendants()) do
						if descendant:IsA("TextLabel") then
							local match2 = tostring(descendant.Text):match("^(.-)'s Base$")
							if match2 and match2:lower():find(match:lower(), 1, true) then
								attribute = child:GetAttribute("Skin")
								break
							end
						end
					end

					if not attribute then
						continue
					end
					break
				end
			end

			tbl19[#tbl19 + 1] = {
				event = riddlerDevBaseEvent,
				who = match,
				skin = attribute and tostring(attribute) or nil,
				timeLeft = textLabel and textLabel.Text or nil,
			}
		end
	end

	return tbl19
end

_G.__RiddlerTraitRanking = function()
	local datas = pinn86:FindFirstChild("Datas")
	local pinn99 = pinnfn34(datas and datas:FindFirstChild("Traits"))
	if type(pinn99) ~= "table" then
		return nil
	end
	local tbl19 = {}

	for k, pinn100 in pairs(pinn99) do
		local mult = type(pinn100) == "table" and tonumber(pinn100.MultiplierModifier)

		if mult then
			local pinnn34 = #tbl19 + 1
			local tbl20 = {}
			local pinn101 = tostring
			local pinn102 = "table"
			tbl20.name = pinn101(type(pinn100) == pinn102 and pinn100.Display or k)
			tbl20.mult = mult
			tbl19[pinnn34] = tbl20
		end
	end

	if #tbl19 == 0 then
		return nil
	end

	table.sort(tbl19, function(arg, arg2)
		if arg.mult ~= arg2.mult then
			return arg.mult > arg2.mult
		end
		return arg.name < arg2.name
	end)

	return tbl19
end

_G.__RiddlerLiveCounts = function()
	local pinn99 = pinn86:FindFirstChild("Datas")
	if not pinn99 then
		return nil
	end

	local function pinnfn60(arg)
		local pinn100 = pinnfn34(pinn99:FindFirstChild(arg))
		if type(pinn100) ~= "table" then
			return nil
		end
		local pinnn34 = 0

		for k in pairs(pinn100) do
			pinnn34 += 1
		end

		return pinnn34
	end

	local tbl19 = {
		brainrots = pinnfn60("Animals"),
		traits = pinnfn60("Traits"),
		mutations = pinnfn60("Mutations"),
		rebirths = pinnfn60("Rebirth"),
	}

	local pinn100 = pinnfn34(pinn99:FindFirstChild("Mutations"))

	if type(pinn100) == "table" then
		local pinn101 = 0

		for k, pinn102 in pairs(pinn100) do
			local num = tonumber(type(pinn102) == "table" and pinn102.RebirthNumber or k)

			if num and num > pinn101 then
				pinn101 = num
			end
		end

		if pinn101 > 0 then
			tbl19.maxRebirth = pinn101
		end
	end

	return tbl19
end

_G.__RiddlerShippedBaseline = [[1x1x1x1
	25
	4th Bros
	67
	Abyssaloco
	Agarrini la Palini
	Alessio
	Anpali Babel
	Antonio
	Appelini
	Aquanaut
	Aquarino
	Arcadopus
	Arcadragon
	Astrolero Cervalero
	Avocadini Antilopini
	Avocadini Guffo
	Avocadorilla
	Bacuru and Egguru
	Ballerina Cappuccina
	Ballerina Peppermintina
	Ballerino Lololo
	Bambini Crostini
	Bambu Bambu Sahur
	Bananita Dolphinita
	Bananito
	Bananito Bandito
	Bandito Axolito
	Bandito Bobritto
	Baskito
	Baskito Egg
	Bearito Cabinito
	Bee Loco
	Belula Beluga
	Berenjello Angello
	Berryno
	Bisonte Giuppitere
	Blackhole Goat
	Blueberrinni Octopusini
	Boatito Auratito
	Boba Panda
	Bombardini Tortinii
	Bombardiro Crocodilo
	Bombardiro Vaccariro
	Bombombini Gusini
	Boneca Ambalabu
	Boppin Bunny
	Brasilini Berimbini
	Brr Brr Patapim
	Brr es Teh Patipum
	Brri Brri Bicus Dicus Bombicus
	Brunito Marsito
	Brutto Gialutto
	Bucketoro
	Bufalino Boomberino
	Buho de Fuego
	Buho de Noelo
	Buho de Volto
	Buho del Cielo
	Bulbito Bandito Traktorito
	Bumbatron
	Bunito Bunito Spinito
	Bunny Bunny Bunny Sahur
	Bunny Bunny Bunny Sahur Egg
	Bunny Tralala
	Bunny Tralala Egg
	Bunny and Eggy
	Bunnyman
	Buntteo
	Buntteo Egg
	Burbaloni Loliloli
	Burguro And Fryuro
	Burrito Bandito
	Burrito Bat
	Cacasito Satalito
	Cachorrito Melonito
	Cacto Hipopotamo
	Camera Ramena
	Candini Fluffini
	Cangurato Gelato
	Capi Taco
	Capitano Americano
	Capitano Gullini
	Capitano Moby
	Cappuccino Assassino
	Cappuccino Clownino
	Caramello Filtrello
	Carloo
	Carrotini Brainini
	Cash or Card
	Cavallo Virtuoso
	Caylusaurus
	Celestial Pegasus
	Celularcini Viciosini
	Centrucci Nuclucci
	Cerberus
	Chachechi
	Chef Crabracadabra
	Chicleteira Bicicleteira
	Chicleteira Champeona
	Chicleteira Cupideira
	Chicleteira Noelteira
	Chicleteira Surfeiteira
	Chicleteirina Bicicleteirina
	Chihuanini Taconini
	Chill Puppy
	Chillin Chili
	Chimnino
	Chimpanzini Bananini
	Chipso and Queso
	Chocco Bunny
	Chrismasmamat
	Churrito Bunnito
	Churrito Bunnito Egg
	Cigno Fulgoro
	Clickerino Crabo
	Cloverat Clapat
	Clovkur Kurkur
	Coco and Mango
	Cocoa Assassino
	Cocofanto Elefanto
	Cocosini Mama
	Cocoteddy
	Cola Cat
	Conetto Morsetto
	Cooki and Milki
	Corn Corn Corn Sahur
	Crabbo Limonetta
	Craburger
	Cuadramat and Pakrahmatmamat
	Cupcake Koala
	Cupid Cupid Sahur
	Cupid Hotspot
	DJ Panda
	Digi Narwhal
	Divino Platypio
	Doi Doi Do
	Dolphini Jetskini
	Donkeyturbo Express
	Dragon Aquanini
	Dragon Cannelloni
	Dragon Gingerini
	Dug dug dug
	Duggy Bros
	Dul Dul Dul
	Dumborino Miracello
	Easter Easter Easter Sahur
	Easter Easter Easter Sahur Egg
	Egg Lucky Block
	Eggdin Egg Egg Dun
	Eggdin Egg Egg Dun Egg
	Eid Eid Eid Sahur
	Electro Quacko
	Elefanto Frigo
	Esok Goala
	Esok Sekolah
	Espresso Signora
	Eviledon
	Examen Bros
	Extinct Ballerina
	Extinct Matteo
	Extinct Tralalero
	Festive 67
	Festive Lucky Block
	Fishboard
	Fishino Clownino
	Fizzy Soda
	Flancito
	Flipa Sandala
	Flippo Marino
	Fluriflura
	Fortunu and Cashuru
	Foxini Lanternini
	Fragola La La La
	Fragrama and Chocrama
	Frankentteo
	Frigo Camelo
	Frio Ninja
	Frogato Pirato
	Frogo Elfo
	Frullato Framingo
	Futbolini Skatini
	GOAT
	Ganganzelli Trulala
	Gangster Footera
	Garama and Madundung
	Gato Celesto
	Gattatino Nyanino
	Gattito Tacoto
	Gelatina Volatina
	Gelato Lumacho
	Giftini Spyderini
	Ginger Cisterna
	Ginger Gerat
	Ginger Globo
	Girafa Celestre
	Girafini Raftini
	Glaciator
	Globa Steppa
	Glorbo Fruttodrillo
	Gobblino Uniciclino
	Gold Egg
	Gold Elf
	Gold Gold Gold
	Gorillo Subwoofero
	Gorillo Watermelondrillo
	Grabatron
	Graipuss Medussi
	Granchiello Spiritell
	Granny
	Granny
	Griffin
	Guerriro Digitale
	Guest 666
	Gym Bros
	Harpuccino
	Headless Horseman
	Heart Lucky Block
	Hippo Golazo
	Ho Ho Ho Sahur
	Holy Arepa
	Honey Honey Bear
	Hopilikalika Hopilikalako
	Hopilikalika Hopilikalako Egg
	Horegini Boom
	Hydra Bunny
	Hydra Bunny Egg
	Hydra Dragon Cannelloni
	Jacko Jack Jack
	Jacko Spaventosa
	Jackorilla
	Jelly Moby
	Jingle Jingle Sahur
	Job Job Job Sahur
	John Doe
	John Pork
	Jolly Jolly Sahur
	Kalika Bros
	Karker Sahur
	Karkerheart Luvkur
	Karkerkar Kurkur
	Ketchuru and Musturu
	Ketupat Bros
	Ketupat Kepat
	Kraken
	Krupuk Pagi Pagi
	La Anniversary Grande
	La Breakfast Combinasion
	La Casa Boo
	La Cucaracha
	La Easter Grande
	La Extinct Grande
	La Food Combinasion
	La Fuse Machine
	La Ginger Sekolah
	La Grande Combinasion
	La Jolly Grande
	La Karkerkar Combinasion
	La Lucky Grande
	La Romantic Grande
	La Sahur Combinasion
	La Secret Combinasion
	La Spooky Grande
	La Summer Grande
	La Supreme Combinasion
	La Taco Combinasion
	La Vacca Jacko Linterino
	La Vacca Lepre Lepreino
	La Vacca Prese Presente
	La Vacca Saturno Saturnita
	Las Capuchinas
	Las Sis
	Las Tralaleritas
	Las Vaquitas Saturnitas
	Lavadorito Spinito
	Lazy Ducky
	Lemonita Splashita
	Leprechaun Lucky Block
	Lerulerulerule
	Lionel Cactuseli
	Lirilì Larilà
	List List List Sahur
	Los 25
	Los 67
	Los Admins
	Los Amigos
	Los Bombinitos
	Los Bros
	Los Bunitos
	Los Bunitos Egg
	Los Burritos
	Los Candies
	Los Chicleteiras
	Los Chihuaninis
	Los Chillis
	Los Combinasionas
	Los Cornis
	Los Crocodillitos
	Los Cucarachas
	Los Cupids
	Los Fruits
	Los Gattitos
	Los Hackers
	Los Hotspotsitos
	Los Jobcitos
	Los Jolly Combinasionas
	Los Karkeritos
	Los Lucky Blocks
	Los Mariachis
	Los Matteos
	Los Mi Gatitos
	Los Mobilis
	Los Noobinis
	Los Nooo My Hotspotsitos
	Los Orcalitos
	Los Planitos
	Los Primos
	Los Puggies
	Los Quesadillas
	Los Secret Combinasionas
	Los Sekolahs
	Los Sigmas
	Los Spaghettis
	Los Spooky Combinasionas
	Los Spyderinis
	Los Sweethearts
	Los Taco Blocks
	Los Tacoritas
	Los Tangcitos
	Los Tictacs
	Los Tipi Tacos
	Los Tortus
	Los Tralaleritos
	Los Trios
	Los Tungtungtungcitos
	Love Love Bear
	Love Love Love Sahur
	Lovin Rose
	Luck Luck Luck Sahur
	Lucky Block
	Lucky Block
	Lucky Block
	Lucky Block
	Lucky Block
	Lumaca Malefica
	Luv Luv Luv
	Magi Ribbitini
	Malame Amarele
	Mangolini Parrocini
	Mariachi Corazoni
	Mastodontico Telepiedone
	Matteo
	Meowl
	Mi Gatito
	Mieteteira Bicicleteira
	Moby Bros
	Money Money Bros
	Money Money Man
	Money Money Puggy
	Money Money Reindeer
	Mummio Rappitto
	Mummy Ambalabu
	Nacho Spyder
	Nachorilla
	Naughty Naughty
	Noo La Polizia
	Noo my Candy
	Noo my Eggs
	Noo my Eggs Egg
	Noo my Examen
	Noo my Gold
	Noo my Heart
	Noo my Present
	Noo my Resume
	Noobini Pizzanini
	Noobini Santanini
	Noodle Noodle Poodle
	Nooo My Hotspot
	Nuclearo Dinossauro
	Octo Lucky Block
	Octoball
	Odin Din Din Dun
	Ombrello Topolino
	Orangutini Ananassini
	Orbi Mochi
	Orcaledon
	Orcalero Orcala
	Orcalita Orcala
	Pakrahmatmamat
	Pakrahmatmatina
	Pancake and Syrup
	Pandaccini Bananini
	Pandanini Frostini
	Paradiso Axolottino
	Patteo
	Pengolino Nuvoletto
	Penguin Tree
	Penguino Cocosino
	Perochello Lemonchello
	Perrito Burrito
	Peschito Machito
	Pi Pi Watermelon
	Piccione Macchina
	Piccionetta Macchina
	Pinealotto Fruttarino
	Pineaplino
	Pipi Avocado
	Pipi Corni
	Pipi Kiwi
	Pipi Potato
	Pirulitoita Bicicleteira
	Pizza and Ranch
	Please my Present
	Pogo Pogo Penguin
	Polaroidini
	Pop Pop Sahur
	Popcuru and Fizzuru
	Pot Hotspot
	Pot Pumpkin
	Premium Egg Lucky Block
	Premium Festive Lucky Block
	Premium Heart Lucky Block
	Premium Leprechaun Lucky Block
	Premium Octo Lucky Block
	Pretzo Robo
	Puffaball
	Pumpkini Spyderini
	Quackalena
	Quackini Snackini
	Quackini Snackini Egg
	Quackula
	Queen Bee
	Quesadilla Crocodila
	Quesadillo Vampiro
	Quivioli Ameleonni
	Raccooni Jandelini
	Rang Ring Bus
	Ref Ref Ref Sahur
	Reindeer Tralala
	Reinito Sleighito
	Rhino Helicopterino
	Rhino Toasterino
	Rico Dinero
	Robo Grafito
	Rocco Disco
	Rocketini Frostini
	Rosetti Tualetti
	Rosey and Teddy
	Rubiko and Kubiko
	Rubrikiko
	S'more Serat
	Salamino Penguino
	Sammyni Cakini
	Sammyni Fattini
	Sammyni Spyderini
	Sammyni Truckini
	Sand Sand Sand
	Santa Hotspot
	Santteo
	Scorpino Coasterino
	Sealo Regalo
	Serafinna Medusella
	Seraphino Gruyero
	Sigma Boy
	Sigma Girl
	Signore Carapace
	Skibidi Toilet
	Skull Skull Skull
	Snailenzo
	Snailo Clovero
	Spaghetti Tualetti
	Spinny Hammy
	Spioniro Golubiro
	Spongini Quackini
	Spooky Lucky Block
	Spooky and Pumpky
	Spyder Elephant
	Squalanana
	Steakini Fattini
	Stoppo Luminino
	Strawberrelli Flamingelli
	Strawberrita
	Strawberry Elephant
	Sundrilla Sundae
	Sushi Inu
	Svinina Bombardino
	Swag Soda
	Swaggy Bros
	Ta Ta Ta Ta Sahur
	Tacorillo Crocodillo
	Tacorita Bicicleta
	Tacoturbo Tacorito
	Talpa Di Fero
	Tang Tang Keletang
	Tartaragno
	Tartaruga Cisterna
	Te Te Te Sahur
	Telemorte
	Tenini Ballini
	Tentacolo Tecnico
	Ti Ti Ti Sahur
	Tic Tic Ribbit
	Tictac Sahur
	Tigrilini Watermelini
	Tigroligre Frutonni
	Tim Cheese
	Tipi Topi Taco
	Tirilikalika Tirilikalako
	To to to Sahur
	Tob Tobi Tobi
	Toiletto Focaccino
	Tootini Shrimpini
	Toro Españolo
	Torrtuginni Dragonfrutini
	Tortuginni Sandcastlini
	Tracoducotulu Delapeladustuz
	Tractoro Dinosauro
	Tralaledon
	Tralalero Tralala
	Tralalita Tralala
	Tree Tree Tree Sahur
	Trenostruzzo Turbo 3000
	Trenostruzzo Turbo 4000
	Trenotubo Axolotrico 9000
	Tric Trac Baraboom
	Trickolino
	Triplito Tralaleritos
	Trippi Troppi
	Trippi Troppi Troppa Trippa
	Trulimero Trulicina
	Tuff Toucan
	Tukanno Bananno
	Unclito Samito
	Urubini Flamenguini
	Vampira Cappucina
	Var Var Var
	Ventoliero Pavonero
	Venuspino
	Vulturino Skeletono
	W or L
	Wombo Rollo
	Yess my Examen
	Yess my Resume
	Yeti Claus
	Yetimatic
	Zibra Zubra Zibralini
	Zombie Tralala
]]

_G.__RiddlerShippedMeta = [[T	1 Year
	T	10B
	T	26
	T	:3
	T	Algeria
	T	Argentina
	T	Aura Shades
	T	Australia
	T	Austria
	T	Ball
	T	Bee
	T	Belgium
	T	Blue Balloon
	T	Blue Egg
	T	Bosnia
	T	Brazil
	T	Bubblegum
	T	Bull
	T	Bunny Ears
	T	Burger
	T	Canada
	T	Cape Verde
	T	Chocolate
	T	Claws
	T	Colombia
	T	Comet-struck
	T	Croatia
	T	Curacao
	T	Czechia
	T	DR Congo
	T	Disco
	T	Ecuador
	T	Egypt
	T	England
	T	Explosive
	T	Fire
	T	Fire Bee
	T	Fireworks
	T	France
	T	Galactic
	T	Germany
	T	Ghana
	T	Glitched
	T	Granny
	T	Green Balloon
	T	Green Egg
	T	Haiti
	T	Halo
	T	Ice Bee
	T	Indonesia
	T	Iran
	T	Iraq
	T	Ivory Coast
	T	Jackolantern Pet
	T	Japan
	T	Job Application
	T	John Pork
	T	Jordan
	T	Lightning
	T	Lucky
	T	Matteo Hat
	T	Meowl
	T	Mexico
	T	Morocco
	T	Netherlands
	T	New Zealand
	T	Norway
	T	Nyan
	T	Orange Balloon
	T	Orange Egg
	T	Paint
	T	Panama
	T	Paraguay
	T	Pink Balloon
	T	Pink Egg
	T	Portugal
	T	Qatar
	T	Queen Bee
	T	RIP Gravestone
	T	Rainbow Balloon
	T	Red Balloon
	T	Reindeer Pet
	T	Rose
	T	Santa Hat
	T	Saudi Arabia
	T	Scotland
	T	Senegal
	T	Shark Fin
	T	Skeleton
	T	Skibidi
	T	Sleepy
	T	Snowy
	T	Sombrero
	T	South Africa
	T	South Korea
	T	Spain
	T	Spider
	T	Strawberry
	T	Sun
	T	Sweden
	T	Switzerland
	T	Taco
	T	Tie
	T	Tunisia
	T	Turkey
	T	UFO
	T	United States
	T	Uruguay
	T	Uzbekistan
	T	Wet
	T	Witch Hat
	T	Zombie
	M	Bloodrot
	M	Candy
	M	Crystal
	M	Cursed
	M	Cyber
	M	Diamond
	M	Divine
	M	Galaxy
	M	Gold
	M	Lava
	M	Phantom
	M	Radioactive
	M	Rainbow
	M	YinYang
	L	Admin Lucky Block
	L	Brainrot God Lucky Block
	L	Egg Lucky Block
	L	Festive Lucky Block
	L	Heart Lucky Block
	L	Leprechaun Lucky Block
	L	Los Lucky Blocks
	L	Los Taco Blocks
	L	Mythic Lucky Block
	L	Octo Lucky Block
	L	Premium Egg Lucky Block
	L	Premium Festive Lucky Block
	L	Premium Heart Lucky Block
	L	Premium Leprechaun Lucky Block
	L	Premium Octo Lucky Block
	L	Secret Lucky Block
	L	Spooky Lucky Block
	L	Taco Lucky Block
	S	All Seeing Sentry
	S	Attack Doge
	S	Bee Launcher
	S	BeeHive
	S	Body Swap Potion
	S	Boogie Bomb
	S	Coil Combo
	S	Dark Matter Slap
	S	Diamond Slap
	S	Emerald Slap
	S	Flame Slap
	S	Flash Teleport
	S	Galaxy Slap
	S	Giant Potion
	S	Glitched Slap
	S	Gold Slap
	S	Grapple Hook
	S	Gravity Coil
	S	Grief Shield
	S	Gummy Bear
	S	Heart Balloon
	S	Heatseeker
	S	Invisibility Cloak
	S	Iron Slap
	S	Laser Cape
	S	Magnet
	S	Medusa's Head
	S	Megaphone
	S	Nuclear Slap
	S	Paintball Gun
	S	Quantum Cloner
	S	Rage Table
	S	Rainbowrath Sword
	S	Ruby Slap
	S	Slap
	S	Speed Coil
	S	Splatter Slap
	S	Subspace Mine
	S	Taser Gun
	S	Trap
	S	Web Slinger
	E	1x1x1x1
	E	3 Roads
	E	4th of July
	E	Ay Mi Gatito
	E	Backrooms
	E	Bee
	E	Bloodmoon
	E	Bombardiro Crocodilo
	E	Brazil
	E	Bubblegum
	E	Candy
	E	Caylus Base
	E	Caylus Snap
	E	Chicleteira Bicicleteira
	E	Concert
	E	Crab Rave
	E	Crystal
	E	Cursed
	E	Cyber
	E	Divine
	E	Dul Dul Dul
	E	Easter
	E	Egg City
	E	Egg Lucky Block
	E	Eggrot Hunt
	E	Eid
	E	Extinct
	E	FatSammy
	E	Fishing
	E	Galaxy
	E	Gingerbread Town
	E	Glitch
	E	Graveyard
	E	Indonesia
	E	Japan Snap
	E	Job Job Job Sahur
	E	John Pork
	E	Karkerkar Kurkur
	E	La Vacca Saturno Saturnita
	E	Laser City
	E	Los Matteos
	E	Lucky Base
	E	Matteo
	E	Meowl
	E	Mexico
	E	Molten
	E	Mygame43
	E	North Pole
	E	Nyan Cats
	E	Phantom
	E	Radioactive
	E	Rain
	E	Rainbow
	E	Raining Burgers
	E	Raining Tacos
	E	Rap Concert
	E	Rip My Granny
	E	Rusty Snap
	E	Rusty's Base
	E	Sammy Snap
	E	Sammy's Base
	E	Sammyni Spyderini
	E	Skibidi
	E	Snow
	E	Soccer
	E	Solar Flare
	E	Spain
	E	Speed
	E	St Patricks
	E	Starfall
	E	Steak Snap
	E	Steak's Base
	E	Strawberry
	E	Summer
	E	Summer Base
	E	Summer Hour
	E	Taco Base
	E	Taco Merchant
	E	Trick or Treat
	E	UFO
	E	Valentines
	E	Water
	E	Winter Hour
	E	Witching Hour
	E	YinYang
	G	Agarrini Shovel
	G	Alien Slap
	G	All Seeing Sentry
	G	Attack Doge
	G	Bambu Runcing
	G	Ban Hammer
	G	Bat
	G	Blackhole Bomb
	G	Blackhole Slap
	G	Bloodmoon Hammer
	G	Bloodmoon Slap
	G	BlowDryer
	G	Body Swap Potion
	G	Boogie Bomb
	G	Cake Trap
	G	Candy Bomb
	G	Candy Coils
	G	Candy Launcher
	G	Candy Sentry
	G	Candy Slap
	G	Candycane Bow
	G	Christmas Coils
	G	Christmas Launcher
	G	Classic Trowel
	G	Coil Combo
	G	Compass
	G	Confetti Cannon
	G	Crescendo Sword
	G	Crystal Hammer
	G	Crystal Slap
	G	Cupid's Wings
	G	Cursed Slap
	G	Cyber Slap
	G	Dark Matter Slap
	G	Dark Spellbook Of The Forgotten
	G	Dart Trap
	G	Decoy Deploy
	G	Delete Hammer
	G	Demon's Head
	G	Dev Doge Attack
	G	Dev Slap
	G	Diamond Slap
	G	Divine Slap
	G	Donut Teleport
	G	Emerald Slap
	G	Epic Sauce
	G	Fire Extinguisher
	G	Fire Hand
	G	Fishing Rod
	G	Flame Slap
	G	Flash Teleport
	G	Flashbang
	G	Flying Carpet
	G	Freeze Ray
	G	Frostbrand
	G	Galaxy Slap
	G	Ghost Invisibility Elixir
	G	Giant Potion
	G	Glitched Slap
	G	Gold Slap
	G	Grapple Hook
	G	Gravity Coil
	G	Gravity Gun
	G	Grief Shield
	G	Gummy Bear
	G	Heart Balloon
	G	Heatseeker
	G	Holo Decoy
	G	Huge Tree
	G	Hunter Crossbow
	G	Ice Staff
	G	Invisibility Cloak
	G	Iron Slap
	G	Jelly Gun
	G	Laser Cape
	G	Laser Gun
	G	Lava Blaster
	G	Lava Slap
	G	Lollipop
	G	Lotus Trap
	G	Magnet
	G	Medium Tree
	G	Medusa's Head
	G	Megaphone
	G	Microbe Launcher
	G	Ninja Potion
	G	Nuclear Slap
	G	Overseer Mace
	G	Paintball Gun
	G	Phantom Slap
	G	Phoenix Pet
	G	Poisioned Phoenix
	G	Poisonous Cake
	G	Polarity Coil
	G	Pumpkin Launcher
	G	Quantum Cloner
	G	Radioactive Airstrike
	G	Radioactive Slap
	G	Rage Table
	G	Rainbow Hammer
	G	Rainbow Huge Tree
	G	Rainbow Medium Tree
	G	Rainbow Slap
	G	Rainbow Small Tree
	G	Rainbowrath Sword
	G	Remote Mine
	G	Ruby Slap
	G	Sabuk Bepak
	G	Sandal Jepit
	G	Santa's Sleigh
	G	Sapu Lidi
	G	Sarung
	G	Shield Remote
	G	Skeleton Bomb
	G	Skeleton Scythe
	G	Slap
	G	Slingshot
	G	Small Tree
	G	Snowball
	G	Snowball Cannon
	G	Sound Horeg
	G	Speed Coil
	G	Splatter Slap
	G	Steampunk Glove
	G	Subspace Mine
	G	Summer Soaker
	G	Super-GLS33
	G	Sweet Scythe
	G	Taser Gun
	G	Trap
	G	Tripple Plungers
	G	Victrola
	G	Violin Strike
	G	Waverider
	G	Web Slinger
	G	Witch's Broom
	G	Wormhole Tunneler
	G	Yin Yang Lamp
	G	Yin Yang Slap
	G	Zen Orb
	G	Zombie Blaster
	G	Zombie Grip Bomb
	R	Admin
	R	Brainrot God
	R	Common
	R	Easter
	R	Epic
	R	Festive
	R	Honey
	R	Legendary
	R	Mythic
	R	OG
	R	Rare
	R	Secret
	R	Spooky
	R	St Patrick's
	R	Summer
	R	Taco
	R	Valentines
	F	Fiery Rod
	F	Frozen Rod
	F	Radioactive Rod
	F	Starter Rod
]]

_G.__RiddlerPrimedExists = _G.__RiddlerPrimedExists or false

_G.__RiddlerPrimeExistCounts = function()
	if _G.__RiddlerPrimedExists then
		return
	end
	_G.__RiddlerPrimedExists = true

	if not pcall(function()
		local playerGui2 = localPlayer:FindFirstChild("PlayerGui")
		if not playerGui2 then
			return
		end
		local pinn99 = playerGui2:FindFirstChild("Index")
		local index = pinn99 and pinn99:FindFirstChild("Index")
		local leftCenter = playerGui2:FindFirstChild("LeftCenter")
		local leftCenter2 = leftCenter and leftCenter:FindFirstChild("LeftCenter")
		leftCenter2 = leftCenter2 and leftCenter2:FindFirstChild("Buttons")
		leftCenter2 = leftCenter2 and leftCenter2:FindFirstChild("Index")
		if not (pinn99 and index and leftCenter2 and getconnections_) then
			return
		end
		local enabled = pinn99.Enabled
		local visible = index.Visible
		local tbl19 = {}
		local currentCamera = workspace.CurrentCamera

		for _, pinn100 in ipairs({ game:GetService("Lighting"), currentCamera }) do
			if pinn100 then
				for _, child in ipairs(pinn100:GetChildren()) do
					if child:IsA("BlurEffect") or child:IsA("DepthOfFieldEffect") then
						tbl19[child] = child.Enabled
						child.Enabled = false
					end
				end
			end
		end

		pinn99.Enabled = false
		local flag24 = true

		local connection = pinn87.RenderStepped:Connect(function()
			if not flag24 then
				return
			end

			if pinn99.Enabled then
				pinn99.Enabled = false
			end

			local currentCamera2 = workspace.CurrentCamera

			for _, pinn100 in ipairs({ game:GetService("Lighting"), currentCamera2 }) do
				if pinn100 then
					for _, child in ipairs(pinn100:GetChildren()) do
						if (child:IsA("BlurEffect") or child:IsA("DepthOfFieldEffect")) and child.Enabled then
							if tbl19[child] == nil then
								tbl19[child] = true
							end

							child.Enabled = false
						end
					end
				end
			end
		end)

		local function pinnfn60()
			for _, pinn100 in ipairs(getconnections_(leftCenter2.Activated)) do
				pcall(function()
					pinn100:Fire()
				end)
			end
		end

		pinnfn60()

		task.spawn(function()
			for i = 1, 20 do
				task.wait(0.25)
				local pinn100 = _G.__RiddlerExistCounts()
				if not (pinn100 and #pinn100 > 0) then
					continue
				end
				break
			end

			pcall(function()
				if index.Visible ~= visible then
					pinnfn60()
					task.wait(0.35)
				end

				index.Visible = visible
			end)

			flag24 = false
			connection:Disconnect()

			pcall(function()
				pinn99.Enabled = enabled

				for k, pinn100 in pairs(tbl19) do
					if k and k.Parent then
						k.Enabled = pinn100
					end
				end
			end)
		end)
	end) then
		pcall(function()
			local playerGui2 = localPlayer:FindFirstChild("PlayerGui")
			local index = playerGui2 and playerGui2:FindFirstChild("Index")

			if index then
				index.Enabled = true
			end
		end)
	end
end

_G.__RiddlerKeepLive = function(riddlerLastLive)
	_G.RiddlerLastLive = riddlerLastLive
	return riddlerLastLive
end

_G.__RiddlerNYTime = function()
	local now2 = os.time()
	local num = tonumber(os.date("!%Y", now2))

	local function pinnfn60(arg, arg2)
		local pinnn34 = 1
		local pinnn35 = 0

		while pinnn34 <= 31 do
			if tonumber(os.date("!%w", os.time({ year = num, month = arg, day = pinnn34, hour = 12 }))) == 0 then
				pinnn35 += 1
				if pinnn35 == arg2 then
					return pinnn34
				end
			end

			pinnn34 += 1
		end

		return 1
	end

	local now3 = os.time({ year = num, month = 3, day = pinnfn60(3, 2), hour = 7 })
	local now4 = os.time({ year = num, month = 11, day = pinnfn60(11, 1), hour = 6 })
	return now2 + (now2 >= now3 and now2 < now4 and -4 or -5) * 3600
end

_G.__RiddlerFold = function(arg)
	local tbl19 = {
		["à"] = "a",
		["á"] = "a",
		["â"] = "a",
		["ä"] = "a",
		["ã"] = "a",
		["è"] = "e",
		["é"] = "e",
		["ê"] = "e",
		["ë"] = "e",
		["ì"] = "i",
		["í"] = "i",
		["î"] = "i",
		["ï"] = "i",
		["ò"] = "o",
		["ó"] = "o",
		["ô"] = "o",
		["ö"] = "o",
		["õ"] = "o",
		["ù"] = "u",
		["ú"] = "u",
		["û"] = "u",
		["ü"] = "u",
		["ñ"] = "n",
		["ç"] = "c",
		["À"] = "a",
		["Á"] = "a",
		["È"] = "e",
		["É"] = "e",
		["Ì"] = "i",
		["Í"] = "i",
		["Ò"] = "o",
		["Ó"] = "o",
		["Ù"] = "u",
		["Ú"] = "u",
		["Ñ"] = "n",
	}

	return tostring(arg or ""):gsub("[À-ß][\u{80}-¿]", function(arg2)
		return tbl19[arg2] or ""
	end):lower()
end

_G.__RiddlerAnimalNamesCache = nil

_G.__RiddlerAnimalNames = function()
	if _G.__RiddlerAnimalNamesCache then
		return _G.__RiddlerAnimalNamesCache
	end
	local riddlerAnimalNamesCache = {}
	local ok, result = pcall(require, pinn86:FindFirstChild("Datas") and pinn86.Datas:FindFirstChild("Animals"))

	if ok and type(result) == "table" then
		for _, pinn99 in pairs(result) do
			if type(pinn99) == "table" and type(pinn99.DisplayName) == "string" and pinn99.DisplayName:find("%a%a%a") then
				riddlerAnimalNamesCache[#riddlerAnimalNamesCache + 1] = {
					name = pinn99.DisplayName,
					flat = " " .. _G.__RiddlerFold(pinn99.DisplayName):gsub("[^%w]+", " "):gsub("^%s+", ""):gsub("%s+$", "") .. " ",
				}
			end
		end

		table.sort(riddlerAnimalNamesCache, function(arg, arg2)
			return #arg.flat > #arg2.flat
		end)

		if #riddlerAnimalNamesCache > 0 then
			_G.__RiddlerAnimalNamesCache = riddlerAnimalNamesCache
		end
	end

	return riddlerAnimalNamesCache
end

_G.__RiddlerFindAnimals = function(arg)
	local str8 = " " .. _G.__RiddlerFold(arg):gsub("[^%w]+", " ") .. " "
	local pinn99 = pairs
	local riddlerAliases = _G.__RiddlerAliases or {}

	for k, riddlerAliase in pinn99(riddlerAliases) do
		str8 = str8:gsub(" " .. k .. " ", " " .. riddlerAliase .. " ")
	end

	local tbl19 = {}
	local tbl20 = {}

	for _, pinn100 in ipairs(_G.__RiddlerAnimalNames()) do
		local str9 = pinn100.flat:sub(1, -2)
		local flag24 = not tbl20[pinn100.name]

		if flag24 then
			flag24 = str8:find(pinn100.flat, 1, true) or str8:find(str9 .. "s ", 1, true) or str8:find(str9 .. "es ", 1, true)
		end

		if flag24 then
			local pinn101 = false

			for _, pinn102 in ipairs(tbl19) do
				if (" " .. pinn102:lower() .. " "):find(str9, 1, true) then
					pinn101 = true
					break
				end
			end

			if not pinn101 then
				tbl20[pinn100.name] = true
				tbl19[#tbl19 + 1] = pinn100.name
			end
		end
	end

	return tbl19
end

_G.__RiddlerAliases = {
	drag = "dragon cannelloni",
	drags = "dragon cannelloni",
}

_G.__RiddlerFindAnimal = function(arg)
	local str8 = " " .. _G.__RiddlerFold(arg):gsub("[^%w]+", " ") .. " "

	for k, riddlerAliase in pairs(_G.__RiddlerAliases) do
		str8 = str8:gsub(" " .. k .. " ", " " .. riddlerAliase .. " ")
	end

	for _, pinn99 in ipairs(_G.__RiddlerAnimalNames()) do
		local str9 = pinn99.flat:sub(1, -2)
		if str8:find(pinn99.flat, 1, true) or str8:find(str9 .. "s ", 1, true) or str8:find(str9 .. "es ", 1, true) then
			return pinn99.name
		end
	end

	return nil
end

_G.__RiddlerCodeName = function(arg)
	local str8 = tostring(arg or "")

	local tbl19 = {
		["à"] = "a",
		["á"] = "a",
		["â"] = "a",
		["ä"] = "a",
		["ã"] = "a",
		["è"] = "e",
		["é"] = "e",
		["ê"] = "e",
		["ë"] = "e",
		["ì"] = "i",
		["í"] = "i",
		["î"] = "i",
		["ï"] = "i",
		["ò"] = "o",
		["ó"] = "o",
		["ô"] = "o",
		["ö"] = "o",
		["õ"] = "o",
		["ù"] = "u",
		["ú"] = "u",
		["û"] = "u",
		["ü"] = "u",
		["ñ"] = "n",
		["ç"] = "c",
		["À"] = "A",
		["Á"] = "A",
		["È"] = "E",
		["É"] = "E",
		["Ì"] = "I",
		["Í"] = "I",
		["Ò"] = "O",
		["Ó"] = "O",
		["Ù"] = "U",
		["Ú"] = "U",
		["Ñ"] = "N",
	}

	return str8:gsub("[À-ß][\u{80}-¿]", function(arg2)
		return tbl19[arg2] or ""
	end):gsub("[^%w]", ""):upper()
end

_G.__RiddlerColours = nil
_G.__RiddlerColoursFolded = nil

_G.__RiddlerColourOf = function(arg)
	if not _G.__RiddlerColours then
		local riddlerColours = {}
		local riddlerColoursFolded = {}

		for match, match2 in ("1x1x1x1=BLACK;25=GREEN;4th bros=RED;67=CYAN;abyssaloco=PURPLE;agarrini la palini=GRAY;alessio=WHITE;anpali babel=BLACK;antonio=GREEN;appelini=BLACK;aquanaut=WHITE;aquarino=YELLOW;arcadopus=RED;arcadragon=RED;astrolero cervalero=WHITE;bacuru and egguru=RED;ballerina peppermintina=GREEN;ballerino lololo=WHITE;bambu bambu sahur=GREEN;bananito=YELLOW;baskito=BROWN;bearito cabinito=BROWN;beavo potto=ORANGE;belula beluga=WHITE;berryno=BLACK;bisonte giuppitere=BROWN;blackhole goat=BLACK;boatito auratito=BROWN;boba panda=BLACK;bombardini tortinii=YELLOW;bombardiro vaccariro=WHITE;boppin bunny=PINK;brasilini berimbini=ORANGE;brr brr patapim=GREEN;brr es teh patipum=ORANGE;brunito marsito=GREEN;bufalino boomberino=BROWN;buho de noelo=GREEN;buho de volto=GRAY;bulbito bandito traktorito=GREEN;bumbatron=YELLOW;bunito bunito spinito=PINK;bunny and eggy=WHITE;bunny bunny bunny sahur=WHITE;bunny tralala=WHITE;bunnyman=WHITE;buntteo=PINK;burguro and fryuro=ORANGE;burrito bandito=BLACK;burrito bat=BROWN;cacasito satalito=WHITE;camera ramena=GRAY;candini fluffini=CYAN;cangurato gelato=ORANGE;capi taco=BROWN;capitano americano=WHITE;capitano gullini=WHITE;capitano moby=BLACK;cappuccino clownino=WHITE;cash or card=GREEN;caylusaurus=RED;celestial pegasus=PURPLE;celularcini viciosini=BROWN;cerberus=RED;chachechi=RED;chicleteira bicicleteira=RED;chicleteira champeona=RED;chicleteira cupideira=WHITE;chicleteira noelteira=RED;chicleteira surfeiteira=RED;chicleteirina bicicleteirina=PINK;chicli chicla=YELLOW;chihuanini taconini=YELLOW;chill puppy=BLUE;chillin chili=RED;chimnino=BROWN;chimpanzini bananini=YELLOW;chipso and queso=YELLOW;chrismasmamat=RED;churrito bunnito=BROWN;cigno fulgoro=WHITE;cloverat clapat=GREEN;clovkur kurkur=GREEN;coco and mango=BROWN;cocoa assassino=BROWN;cocofanto elefanto=GRAY;cola cat=BROWN;conetto morsetto=YELLOW;cooki and milki=ORANGE;corn corn corn sahur=GREEN;crabbo limonetta=ORANGE;craburger=ORANGE;cuadramat and pakrahmatmamat=PURPLE;cupid cupid sahur=PINK;cupid hotspot=WHITE;deputy leopard=ORANGE;digi narwhal=BLUE;divino platypio=CYAN;dj panda=BLACK;dolphini jetskini=BLUE;donkeyturbo express=RED;dragon aquanini=CYAN;dragon cannelloni=YELLOW;dragon gingerini=ORANGE;dug dug dug=RED;duggy bros=RED;dul dul dul=BROWN;dumborino miracello=PINK;easter easter easter sahur=PINK;eggdin egg egg dun=YELLOW;eid eid eid sahur=YELLOW;elefanto frigo=WHITE;esok goala=WHITE;esok sekolah=BROWN;espresso signora=WHITE;eviledon=RED;examen bros=WHITE;extinct ballerina=PINK;extinct matteo=BROWN;extinct tralalero=BLUE;festive 67=GREEN;fishboard=BLUE;fishino clownino=ORANGE;flancito=YELLOW;flipa sandala=YELLOW;flippo marino=YELLOW;fortunu and cashuru=GREEN;foxini lanternini=ORANGE;fragola la la la=RED;fragrama and chocrama=WHITE;frankentteo=GREEN;frio ninja=WHITE;frullato framingo=PINK;futbolini skatini=WHITE;garama and madundung=GRAY;gattatino nyanino=GRAY;gattino hydrantino=RED;gattito tacoto=BROWN;gelatina volatina=PINK;gelato lumacho=CYAN;giftini spyderini=GREEN;ginger cisterna=BROWN;ginger gerat=ORANGE;ginger globo=BROWN;girafa celestre=GREEN;girafini raftini=YELLOW;glaciator=BLUE;globa steppa=BLUE;goat=BROWN;gobblino uniciclino=BLUE;gold and diamond=YELLOW;gold egg=YELLOW;gold elf=YELLOW;gold gold gold=BLACK;grabatron=BLUE;graipuss medussi=PURPLE;granchiello spiritell=BLUE;granny=GRAY;griffin=YELLOW;gub=BROWN;guerriro digitale=WHITE;guest 666=BLACK;gym bros=ORANGE;headless horseman=PURPLE;hippo golazo=PURPLE;hippo jacuzzo=PURPLE;ho ho ho sahur=RED;honey honey bear=YELLOW;honey honey narwhal=BLUE;hopilikalika hopilikalako=PINK;horegini boom=BLUE;hydra bunny=PINK;hydra dragon cannelloni=YELLOW;hydra serpent=GREEN;jacko jack jack=ORANGE;jackorilla=GRAY;jelly moby=RED;job job job sahur=WHITE;john doe=RED;john pork=PINK;jolly jolly sahur=BROWN;kalika bros=PINK;karker sahur=BLUE;karkerheart luvkur=RED;karkerkar kurkur=GREEN;ketchuru and musturu=RED;ketupat bros=GREEN;ketupat kepat=GREEN;koala parabala=WHITE;kraken=RED;krupuk pagi pagi=YELLOW;la anniversary grande=PINK;la breakfast combinasion=YELLOW;la casa boo=GREEN;la craft machine=PURPLE;la cucaracha=BROWN;la easter grande=WHITE;la extinct grande=WHITE;la food combinasion=YELLOW;la fuse machine=BLUE;la ginger sekolah=BROWN;la grande combinasion=ORANGE;la jolly grande=RED;la karkerkar combinasion=GREEN;la lucky grande=GREEN;la romantic grande=RED;la sahur combinasion=ORANGE;la secret combinasion=WHITE;la spooky grande=ORANGE;la summer grande=ORANGE;la supreme combinasion=ORANGE;la taco combinasion=BROWN;la vacca jacko linterino=ORANGE;la vacca lepre lepreino=BLACK;la vacca prese presente=GREEN;la vacca saturno saturnita=BROWN;las capuchinas=PINK;las sis=PINK;las tralaleritas=PINK;las vaquitas saturnitas=CYAN;lavadorito spinito=WHITE;lazy ducky=YELLOW;lemonita splashita=YELLOW;lirilì larilà=GREEN;list list list sahur=GREEN;los 25=RED;los 67=BLUE;los admins=RED;los amigos=BROWN;los bombinitos=WHITE;los bros=BLUE;los bunitos=PINK;los burritos=BLACK;los candies=RED;los chicleteiras=RED;los chihuaninis=YELLOW;los chillis=RED;los combinasionas=ORANGE;los cornis=BROWN;los crocodillitos=ORANGE;los cucarachas=BROWN;los cupids=PINK;los dragons=YELLOW;los fruits=BLACK;los gattitos=GRAY;los hackers=BLACK;los hotspotsitos=YELLOW;los jobcitos=WHITE;los jolly combinasionas=BROWN;los karkeritos=GREEN;los mariachis=CYAN;los matteos=BROWN;los mi gatitos=GRAY;los mobilis=BROWN;los nooo my hotspotsitos=BROWN;los orcalitos=WHITE;los planitos=BROWN;los primos=WHITE;los puggies=BROWN;los quesadillas=BROWN;los secret combinasionas=BROWN;los sekolahs=BROWN;los sigmas=BLACK;los spaghettis=WHITE;los spooky combinasionas=ORANGE;los spyderinis=BLACK;los sweethearts=PINK;los tacoritas=YELLOW;los tangcitos=WHITE;los tictacs=ORANGE;los tipi tacos=PINK;los tortus=PINK;los tralaleritos=BLUE;los trios=WHITE;los tungtungtungcitos=ORANGE;love love bear=RED;love love love sahur=RED;lovin rose=RED;luck luck luck sahur=GREEN;lumaca malefica=BROWN;luv luv luv=PINK;mariachi corazoni=CYAN;mastodontico telepiedone=BROWN;matteo=BROWN;meowl=BROWN;mi gatito=YELLOW;mieteteira bicicleteira=BLACK;moby bros=WHITE;money money bros=BROWN;money money man=PURPLE;money money puggy=GREEN;money money reindeer=BROWN;motorino bumbino=YELLOW;mummy ambalabu=BROWN;nacho spyder=YELLOW;nachorilla=YELLOW;naughty naughty=WHITE;noo la polizia=BLUE;noo my candy=ORANGE;noo my eggs=YELLOW;noo my examen=WHITE;noo my gold=BLACK;noo my heart=RED;noo my present=RED;noo my resume=WHITE;noobini pizzanini=YELLOW;noodle noodle poodle=WHITE;nooo my hotspot=YELLOW;nuclearo dinossauro=BROWN;octoball=BLUE;odin din din dun=ORANGE;ombrello topolino=BLUE;orcaledon=BLACK;orcalero orcala=BLACK;orcalita orcala=PINK;orchidox=PINK;pakrahmatmamat=YELLOW;pakrahmatmatina=PINK;pancake and syrup=YELLOW;panda popanda=ORANGE;pandanini frostini=WHITE;paradiso axolottino=PINK;patteo=GREEN;pelican pachetto=CYAN;perrito burrito=BROWN;peschito machito=CYAN;piccione macchina=GRAY;pineaplino=YELLOW;pirulitoita bicicleteira=BLUE;pizza and ranch=YELLOW;please my present=GREEN;pogo pogo penguin=BLACK;polaroidini=WHITE;pop pop petalini=GREEN;pop pop sahur=BROWN;popcuru and fizzuru=WHITE;pot hotspot=BROWN;pot pumpkin=YELLOW;pretzo robo=ORANGE;puffino builderino=WHITE;pumpkini spyderini=ORANGE;quackalena=YELLOW;quackini snackini=WHITE;queen bee=YELLOW;quesadilla crocodila=BROWN;quesadillo vampiro=YELLOW;rang ring bus=BLACK;ref ref ref sahur=WHITE;reindeer tralala=BROWN;reinito sleighito=BROWN;rico dinero=BROWN;robo grafito=GRAY;rocco disco=WHITE;rocketini frostini=RED;rosatops triceratino=GREEN;rosetti tualetti=WHITE;rosey and teddy=BROWN;rubiko and kubiko=WHITE;rubrikiko=RED;s'more serat=BROWN;sammyni cakini=RED;sammyni fattini=RED;sammyni spyderini=RED;sammyni truckini=RED;sand sand sand=GREEN;santa hotspot=RED;santteo=RED;scorpino coasterino=PURPLE;serafinna medusella=CYAN;signore carapace=BLUE;sir mangus=BLUE;skibidi toilet=WHITE;skull skull skull=WHITE;snailenzo=BROWN;snailo clovero=GREEN;spaghetti tualetti=WHITE;spinny hammy=WHITE;spooky and pumpky=WHITE;spyder elephant=WHITE;squalanana=YELLOW;steakini fattini=WHITE;strawberrita=RED;strawberry elephant=RED;sundrilla sundae=BROWN;sushi inu=ORANGE;svinina bombardino=PINK;swag soda=BLUE;swaggy bros=BLUE;syrup samurai=BLACK;tacorillo crocodillo=GREEN;tacorita bicicleta=YELLOW;tacoturbo tacorito=YELLOW;tang tang keletang=BROWN;tartaruga cisterna=GREEN;telemorte=BROWN;tenini ballini=GREEN;tentacolo tecnico=BLUE;tictac sahur=ORANGE;tigroligre frutonni=YELLOW;tim cheese=BLACK;tipi topi taco=PINK;tirilikalika tirilikalako=WHITE;to to to sahur=GRAY;tootini shrimpini=ORANGE;toro españolo=BLACK;torrtuginni dragonfrutini=PINK;tortuginni sandcastlini=YELLOW;tractoro dinosauro=GREEN;tralaledon=BLUE;tralalero tralala=BLUE;tralalita tralala=PINK;trenostruzzo turbo 3000=BLACK;trenostruzzo turbo 4000=WHITE;trenotubo axolotrico 9000=GRAY;trickolino=PURPLE;triplito tralaleritos=BROWN;trippi troppi troppa trippa=BROWN;tuff toucan=YELLOW;tukanno bananno=YELLOW;unclito samito=BLUE;urubini flamenguini=BLACK;vampira cappucina=WHITE;var var var=BLACK;ventoliero pavonero=CYAN;venuspino=GREEN;vulturino skeletono=WHITE;w or l=GREEN;yess my examen=WHITE;yess my resume=WHITE;yeti claus=RED;yetimatic=WHITE;zebrino pianino=WHITE;zombie tralala=GREEN;"):gmatch("([^;=]+)=([^;]+)") do
			riddlerColours[match] = match2
			riddlerColoursFolded[_G.__RiddlerCodeName(match):lower()] = match2
		end

		local pinn99 = _G
		_G.__RiddlerColours = riddlerColours
		pinn99.__RiddlerColoursFolded = riddlerColoursFolded
	end

	local pinn99 = _G.__RiddlerColours[tostring(arg or ""):lower()]
	if pinn99 then
		return pinn99
	end
	return _G.__RiddlerColoursFolded[_G.__RiddlerCodeName(arg):lower()]
end

_G.__RiddlerSubjectOf = function(arg)
	local str8 = " " .. tostring(arg or ""):lower():gsub("[^%w]+", " ") .. " "
	local riddlerFindAnimal = _G.__RiddlerFindAnimal and _G.__RiddlerFindAnimal(arg)
	if riddlerFindAnimal then
		return riddlerFindAnimal, false
	end
	local pos = str8:find(" the brainrot ", 1, true) or str8:find(" the prize ", 1, true) or str8:find(" the reward ", 1, true) or str8:find(" that brainrot ", 1, true) or str8:find(" this brainrot ", 1, true) or str8:find(" the pet ", 1, true) or str8:find(" the one ", 1, true) or str8:find(" of this brainrot ", 1, true) or str8:find(" of the pet ", 1, true) or str8:find(" that one ", 1, true) or str8:find(" its ", 1, true) or str8:find(" the animal ", 1, true)

	if not pos then
		for _, pinn99 in ipairs({ " the prizes ", " the loot ", " the rewards " }) do
			local pos2 = str8:find(pinn99, 1, true)

			if pos2 then
				local match = str8:sub(pos2 + #pinn99):match("^(%a+)") or ""
				if match:find("^colou?r") or match == "colour" or match == "rarity" or match == "income" or match:find("^mutation") or match:find("^exist") or match:find("^trait") or match == "Test" or match == "exist" or match == "count" then
					pos = true
					break
				end
			end
		end
	end

	if not pos then
		return nil, false
	end
	local now2 = os.time()
	local riddlerPrize = _G.__RiddlerPrize
	local riddlerSubject = _G.__RiddlerSubject
	local pinn99 = "table"
	local flag24 = type(riddlerPrize) == pinn99
	local flag25

	if flag24 then
		flag25 = now2 - (riddlerPrize.t or 0) > 5400
	else
		flag25 = flag24
	end

	if flag25 then
		riddlerPrize = nil
	end

	local flag26 = type(riddlerSubject) == "table"

	if flag26 then
		flag26 = now2 - (riddlerSubject.t or 0) > 3600
	end

	if flag26 then
		riddlerSubject = nil
	end

	if str8:find(" the prize ", 1, true) or str8:find(" the answer ", 1, true) or str8:find(" the prizes ", 1, true) or str8:find(" codes are for ", 1, true) or str8:find(" code is for ", 1, true) or str8:find(" codes for ", 1, true) or str8:find(" code for ", 1, true) or str8:find(" giving away ", 1, true) or str8:find(" of the ", 1, true) then
		riddlerPrize = riddlerPrize or riddlerSubject
	elseif riddlerPrize and riddlerSubject then
		riddlerPrize = (riddlerSubject.t or 0) >= (riddlerPrize.t or 0) and riddlerSubject or riddlerPrize
	else
		riddlerPrize = riddlerPrize or riddlerSubject
	end

	if riddlerPrize then
		return riddlerPrize.name, true, riddlerPrize
	end
	return nil, false
end

_G.__RiddlerCacheKey = function(arg)
	local str8 = tostring(arg or "")
	local pinn99, pinn100 = _G.__RiddlerSubjectOf(str8)

	if pinn100 and pinn99 then
		str8 ..= "|pin=" .. pinn99
	end

	local str9 = str8:lower()

	if str9:find("today", 1, true) or str9:find("date", 1, true) or str9:find("month", 1, true) or str9:find("year", 1, true) or str9:find("%f[%a]days?%f[%A]") or str9:find(" today ", 1, true) or str9:find("yesterday", 1, true) then
		str8 ..= "|ny=" .. os.date("!%Y-%m-%d", _G.__RiddlerNYTime())
	end

	return str8
end

_G.__RiddlerPickMemory = function(arg, arg2, arg3, arg4)
	local pinn99 = "table"
	if type(arg2) ~= pinn99 or #arg2 == 0 then
		return {}, "none"
	end
	arg4 = arg4 or {}
	local str8 = tostring(arg or "")
	local str9 = " " .. str8:lower():gsub("[^%w']+", " "):gsub("'", "") .. " "
	local str10 = str8:lower():gsub("%s+", " ")

	local tbl19 = {
		the = 1,
		a = 1,
		an = 1,
		["and"] = 1,
		["or"] = 1,
		of = 1,
		to = 1,
		["in"] = 1,
		on = 1,
		at = 1,
		["for"] = 1,
		is = 1,
		are = 1,
		was = 1,
		were = 1,
		be = 1,
		been = 1,
		it = 1,
		its = 1,
		this = 1,
		that = 1,
		these = 1,
		those = 1,
		i = 1,
		im = 1,
		me = 1,
		my = 1,
		you = 1,
		your = 1,
		he = 1,
		we = 1,
		they = 1,
		them = 1,
		there = 1,
		here = 1,
		what = 1,
		whats = 1,
		which = 1,
		who = 1,
		whos = 1,
		when = 1,
		where = 1,
		how = 1,
		why = 1,
		["OG"] = 1,
		does = 1,
		did = 1,
		have = 1,
		has = 1,
		had = 1,
		will = 1,
		would = 1,
		can = 1,
		just = 1,
		like = 1,
		gonna = 1,
		about = 1,
		with = 1,
		from = 1,
		["then"] = 1,
		than = 1,
		into = 1,
		some = 1,
		only = 1,
		also = 1,
		so = 1,
		lol = 1,
		btw = 1,
		rn = 1,
		ngl = 1,
		now = 1,
		up = 1,
		out = 1,
		code = 1,
		codes = 1,
		riddle = 1,
		answer = 1,
		redeem = 1,
		plus = 1,
		minus = 1,
		times = 1,
		said = 1,
		say = 1,
		says = 1,
		told = 1,
		earlier = 1,
		before = 1,
		mentioned = 1,
		remember = 1,
		today = 1,
		many = 1,
		much = 1,
		number = 1,
		thing = 1,
		one = 1,
		guys = 1,
		everyone = 1,
		more = 1,
		all = 1,
		get = 1,
		got = 1,
		go = 1,
		lets = 1,
		ok = 1,
		okay = 1,
		very = 1,
		really = 1,
		lowkey = 1,
		obviously = 1,
		actually = 1,
		know = 1,
		u = 1,
		ur = 1,
	}

	local tbl20 = {
		gave = "give",
		giving = "give",
		given = "give",
		gives = "give",
		picked = "pick",
		picking = "pick",
		chose = "choose",
		chosen = "choose",
		spawned = "spawn",
		spawning = "spawn",
		spawns = "spawn",
		raining = "rain",
		rained = "rain",
		rains = "rain",
		favourite = "fav",
		favorite = "fav",
		fave = "fav",
		favs = "fav",
		multiplier = "boost",
		mult = "boost",
		boosted = "boost",
		boosting = "boost",
		cats = "cat",
		kitty = "cat",
		kitten = "cat",
		typed = "type",
		wrote = "write",
		written = "write",
		best = "best",
		secrets = "secret",
		ogs = "og",
		mutations = "mutation",
		mutaion = "mutation",
		exist = "exist",
		exists = "exist",
		existing = "exist",
		money = "cash",
		cash = "cash",
		dollars = "cash",
		coins = "cash",
		brainrots = "brainrot",
		brainrot = "brainrot",
	}

	local function pinnfn60(arg5)
		local str11 = arg5:lower():gsub("'", "")
		if tbl20[str11] then
			return tbl20[str11]
		end
		local flag24 = #str11 > 5

		if flag24 then
			local pinn100 = "ing"
			flag24 = str11:sub(-3) == pinn100
		end

		if flag24 then
			str11 = str11:sub(1, -4)
		else
			local flag25 = #str11 > 4

			if flag25 then
				local pinn100 = "income"
				flag25 = str11:sub(-2) == pinn100
			end

			if flag25 then
				str11 = str11:sub(1, -3)
			elseif #str11 > 4 and str11:sub(-2) == "es" then
				str11 = str11:sub(1, -3)
			else
				local flag26 = #str11 > 3

				if flag26 then
					local pinn100 = "rarity"
					flag26 = str11:sub(-1) == pinn100
				end

				if flag26 then
					local pinn100 = "income"
					flag26 = str11:sub(-2) ~= pinn100
				end

				if flag26 then
					str11 = str11:sub(1, -2)
				end
			end
		end

		return tbl20[str11] or str11
	end

	local function pinnfn61(arg5, arg6)
		local pinnn34 = #arg5
		local pinnn35 = #arg6
		if math.abs(pinnn34 - pinnn35) > 1 then
			return false
		end
		local pinnn36 = 1
		local pinnn37 = 1
		local pinnn38 = 0

		while pinnn36 <= pinnn34 and pinnn37 <= pinnn35 do
			if arg5:sub(pinnn36, pinnn36) == arg6:sub(pinnn37, pinnn37) then
				pinnn36 += 1
				pinnn37 += 1
				continue
			end

			pinnn38 += 1
			if pinnn38 > 1 then
				return false
			end

			if pinnn35 < pinnn34 then
				pinnn36 += 1
			elseif pinnn34 < pinnn35 then
				pinnn37 += 1
			else
				pinnn36 += 1
				pinnn37 += 1
			end
		end

		return pinnn38 + pinnn34 - pinnn36 + 1 + pinnn35 - pinnn37 + 1 <= 1
	end

	local function pinnfn62(arg5, arg6)
		if arg5 == arg6 then
			return true
		end

		if #arg5 >= 4 and #arg6 >= 4 and (arg5:sub(1, #arg6) == arg6 or arg6:sub(1, #arg5) == arg5) then
			return true
		end

		if #arg5 >= 5 and #arg6 >= 5 and pinnfn61(arg5, arg6) then
			return true
		end
		return false
	end

	local function pinnfn63(arg5)
		local tbl21 = {}
		local pinn100 = " "
		local pinn101 = " "

		for match in (pinn100 .. arg5:lower():gsub("[^%w']+", " "):gsub("'", "") .. pinn101):gmatch("%a+") do
			if #match >= 3 and not tbl19[match] then
				tbl21[#tbl21 + 1] = pinnfn60(match)
			end
		end

		return tbl21
	end

	local tbl21 = {
		one = 1,
		two = 2,
		three = 3,
		four = 4,
		five = 5,
		six = 6,
		seven = 7,
		eight = 8,
		nine = 9,
		ten = 10,
		eleven = 11,
		twelve = 12,
		thirteen = 13,
		fourteen = 14,
		fifteen = 15,
		sixteen = 16,
		seventeen = 17,
		eighteen = 18,
		nineteen = 19,
		twenty = 20,
		thirty = 30,
		forty = 40,
		fifty = 50,
		sixty = 60,
		seventy = 70,
		eighty = 80,
		ninety = 90,
		hundred = 100,
		thousand = 1000,
		million = 1000000,
	}

	local tbl22 = {
		min = 1,
		mins = 1,
		minute = 1,
		minutes = 1,
		sec = 1,
		secs = 1,
		second = 1,
		seconds = 1,
		hour = 1,
		hours = 1,
		hr = 1,
		hrs = 1,
		h = 1,
		m = 1,
		s = 1,
		pm = 1,
		am = 1,
		x = 1,
	}

	local function pinnfn64(arg5)
		local tbl23 = {}

		for match in arg5:lower():gmatch("[%w']+") do
			tbl23[#tbl23 + 1] = match:gsub("'", "")
		end

		local tbl24 = {}
		local pinn100 = 1

		while pinn100 <= #tbl23 do
			local pinn101 = tbl23[pinn100]
			local match, pinn102, pinn103 = pinn101:match("^(%a*)(%d+)(%a*)$")

			if pinn102 then
				local str11 = tbl23[pinn100 + 1] or ""
				local str12 = tbl23[pinn100 + 2] or ""
				local tbl25 = { value = pinn102, unit = "", kind = "count" }

				if match == "times" or pinn103 == "x" or str11 == "x" then
					tbl25.kind = "mult"
				elseif pinn103 == "m" or pinn103 == "k" or pinn103 == "b" or pinn103 == "t" then
					tbl25.kind = "money"
					tbl25.unit = pinnfn60(str11)
				elseif pinn103 ~= "" and tbl22[pinn103] then
					tbl25.kind = "add"
				elseif pinn103 ~= "" then
					tbl25.unit = pinnfn60(pinn103)
				elseif tbl22[str11] then
					tbl25.kind = "time"
				elseif (str11 == "more" or str11 == "extra") and tbl22[str12] then
					tbl25.kind = "add"
				elseif str11 == "soon" or str11 == "upcoming" then
					tbl25.kind = "soon"
					tbl25.unit = pinnfn60(str12)
				else
					tbl25.unit = pinnfn60(str11)
				end

				tbl24[#tbl24 + 1] = tbl25
				pinn100 += 1
			elseif tbl21[pinn101] then
				local pinn104 = 0
				local pinnn34 = 0

				while tbl23[pinn100] and (tbl21[tbl23[pinn100]] or tbl23[pinn100] == "and") do
					local pinn105 = tbl21[tbl23[pinn100]]

					if pinn105 then
						if pinn105 == 100 then
							pinnn34 = (pinnn34 == 0 and 1 or pinnn34) * 100
						elseif pinn105 >= 1000 then
							pinn104 += (pinnn34 == 0 and 1 or pinnn34) * pinn105
							pinnn34 = 0
						else
							pinnn34 += pinn105
						end
					end

					pinn100 += 1
				end

				local pinnn35 = pinn104 + pinnn34

				if 0 < pinnn35 then
					tbl24[#tbl24 + 1] = { value = tostring(pinnn35), unit = pinnfn60(tbl23[pinn100] or ""), kind = "count" }
				end
			else
				pinn100 += 1
			end
		end

		return tbl24
	end

	local flag24 = false

	for _, pinn100 in ipairs({
		" i said ",
		" he said ",
		" you said ",
		" said ",
		" i say ",
		" did i say ",
		" earlier ",
		" before ",
		" earlier said ",
		" that prize ",
		" mentioned ",
		" i mentioned ",
		" told ",
		" remember ",
		" last message ",
		" announced ",
		" the one i ",
		" that one ",
		" that brainrot ",
		" the prize ",
		" the reward ",
		" that brainrot ",
		" of that ",
		" did i ",
		" i gave ",
		" i give ",
		" i spawned ",
		" i spawn ",
		" i picked ",
		" the color ",
		" i was ",
		" i typed ",
		" i type ",
		" just type",
		" i wrote ",
		" talking about ",
		" stated ",
		" of the reward ",
		" i did ",
		" i just ",
		" last thing ",
	}) do
		if str9:find(pinn100, 1, true) then
			flag24 = true
			break
		end
	end

	local pos = str9:find(" last message ", 1, true) or str9:find(" just type", 1, true) or str9:find(" just said ", 1, true) or str9:find(" just say ", 1, true) or str9:find(" just wrote ", 1, true) or str9:find(" last thing ", 1, true)
	local pos2 = str9:find(" the prize ", 1, true) or str9:find(" the reward ", 1, true) or str9:find(" codes are for ", 1, true) or str9:find(" code is for ", 1, true) or str9:find(" codes for ", 1, true) or str9:find("prize", 1, true) or str9:find(" prize ", 1, true)
	local flag25 = str9:find(" per ", 1, true) ~= nil
	local flag26 = str9:find(" og ", 1, true) ~= nil
	local pos3 = str9:find(" how many ", 1, true) or str9:find(" how much ", 1, true) or str9:find(" how old ", 1, true) or str9:find(" how long ", 1, true) or str9:find(" amount ", 1, true)
	local tbl23 = {}
	local tbl24 = {}
	local pinn100 = ipairs
	local findAnimals = arg4.findAnimals and arg4.findAnimals(str8) or {}

	for _, findAnimal in pinn100(findAnimals) do
		tbl23[findAnimal] = true
		tbl24[#tbl24 + 1] = findAnimal
	end

	if arg4.subjectOf then
		local pinn101, pinn102 = arg4.subjectOf(str8)

		if pinn101 and pinn102 then
			tbl23[pinn101] = true
			tbl24[#tbl24 + 1] = pinn101
		end
	end

	local pinn101 = pinnfn63(str8)
	local tbl25 = {}

	for _, pinn102 in ipairs(tbl24) do
		local pinn103 = ipairs
		local pinn104 = pinnfn63(pinn102)

		for _, pinn105 in pinn103(pinn104) do
			tbl25[pinn105] = true
		end
	end

	local tbl26 = {}

	for _, pinn102 in ipairs(pinn101) do
		if not tbl25[pinn102] then
			tbl26[#tbl26 + 1] = pinn102
		end
	end

	local flag27 = (str9:find(" mythic ", 1, true) or str9:find(" secret ", 1, true) or str9:find(" og ", 1, true)) and #tbl24 == 0
	local match = str9:match(" how many (%a+) ") or str9:match(" number of (%a+) ") or str9:match(" amount of (%a+) ") or str9:match(" how much (%a+) ")
	local flag28 = match and not tbl19[match] and pinnfn60(match) or nil
	local tbl27 = {}

	for match2, match22 in str9:gmatch("(%a*) ?(%d+)") do
		if match2 ~= "plus" and match2 ~= "minus" and match2 ~= "times" and match2 ~= "x" and match2 ~= "divided" and match2 ~= "over" then
			tbl27[match22] = true
		end
	end

	local tbl28 = {}

	for match2 in str9:gmatch(" my (%a+)") do
		if not tbl19[match2] then
			tbl28[#tbl28 + 1] = pinnfn60(match2)
		end
	end

	local pos4 = str9:find(" minute", 1, true) or str9:find(" second", 1, true) or str9:find(" hour", 1, true)
	local pos5 = str9:find(" luck ", 1, true) or str9:find(" boost", 1, true) or str9:find(" multiplier", 1, true) or str9:find(" x ", 1, true)

	if not (#tbl24 > 0 and not flag24 and not pos2) then
		local function pinnfn65(arg5)
			local str11 = arg5:lower()
			return str11:find(" pet", 1, true) or str11:find(" egg", 1, true) or str11:find("^egg")
		end

		local riddlerPickIndex = _G.__RiddlerPickIndex

		if arg4.names then
			local pinn102 = arg4.names()

			if not riddlerPickIndex or riddlerPickIndex.n ~= #pinn102 then
				riddlerPickIndex = { n = #pinn102, byKey = {} }

				for _, pinn103 in ipairs(pinn102) do
					if not pinnfn65(pinn103) then
						for match2 in pinn103:lower():gmatch("%a+") do
							if #match2 >= 5 then
								local str11 = match2:sub(1, 3)
								riddlerPickIndex.byKey[str11] = riddlerPickIndex.byKey[str11] or {}
								table.insert(riddlerPickIndex.byKey[str11], { tok = match2, name = pinn103 })
							end
						end
					end
				end

				_G.__RiddlerPickIndex = riddlerPickIndex
			end
		end

		local function pinnfn66(arg5)
			local tbl29 = {}
			local pinn102 = ipairs
			local findAnimals2 = arg4.findAnimals and arg4.findAnimals(arg5) or {}

			for _, pinn103 in pinn102(findAnimals2) do
				local flag29 = not pinnfn65(pinn103)
				local pos6

				if flag29 then
					pos6 = pinn103 ~= pinn103:upper() or arg5:find(pinn103, 1, true)
				else
					pos6 = flag29
				end

				if pos6 then
					tbl29[#tbl29 + 1] = pinn103
				end
			end

			if #tbl29 > 0 or not riddlerPickIndex then
				return tbl29
			end
			local tbl30 = {}

			for match2 in arg5:lower():gmatch("%a+") do
				if 6 <= #match2 then
					local pinn103 = ipairs
					local tbl31 = riddlerPickIndex.byKey[match2:sub(1, 3)] or {}

					for _, pinn104 in pinn103(tbl31) do
						if pinn104.tok == match2 or pinn104.tok:sub(1, #match2) == match2 and #match2 >= 0.7 * #pinn104.tok then
							tbl30[pinn104.name] = tbl30[pinn104.name] or {}
							tbl30[pinn104.name][pinn104.tok] = true
						elseif pinnfn61(match2, pinn104.tok) then
							tbl30[pinn104.name] = tbl30[pinn104.name] or {}
							tbl30[pinn104.name][pinn104.tok] = "typo"
						end
					end
				end
			end

			local tbl31 = {}

			for k, pinn103 in pairs(tbl30) do
				local pinn104 = 0
				local pinn105 = 0
				local pinnn34 = 0

				for match2 in k:lower():gmatch("%a+") do
					if #match2 >= 5 then
						pinn104 += 1

						if pinn103[match2] then
							pinn105 += 1

							if pinn103[match2] == true then
								pinnn34 += 1
							end
						end
					end
				end

				if pinn104 > 0 and pinn105 == pinn104 and pinnn34 > 0 then
					tbl31[#tbl31 + 1] = k
				end
			end

			return tbl31
		end

		local tbl29 = {
			common = 1,
			rare = 1,
			epic = 1,
			legendary = 1,
			mythic = 1,
			secret = 1,
			og = 1,
			god = 1,
			admin = 1,
		}

		local function pinnfn67(arg5)
			return (arg5:find(" for ", 1, true) or arg5:find(":", 1, true)) and (arg5:find("code", 1, true) or arg5:find("riddle", 1, true)) or arg5:find(" for ", 1, true) or arg5:find("reward", 1, true) or arg5:find("riddle", 1, true) or arg5:find("code", 1, true)
		end

		local tbl30 = {}
		local tbl31 = {}

		for _, pinn102 in ipairs(arg2) do
			local flag29 = type(pinn102) == "table"

			if flag29 then
				local pinn103 = "string"
				flag29 = type(pinn102.text) == pinn103
			end

			if flag29 then
				flag29 = arg3 - (pinn102.t or 0) <= 3600
			end

			if flag29 then
				tbl31[#tbl31 + 1] = pinn102
			end
		end

		for i, pinn102 in ipairs(tbl31) do
			pinn102.__k = i
		end

		table.sort(tbl31, function(arg5, arg6)
			if (arg5.t or 0) ~= (arg6.t or 0) then
				return (arg5.t or 0) < (arg6.t or 0)
			end
			return arg5.__k < arg6.__k
		end)

		local tbl32 = {
			gg = 1,
			lol = 1,
			ok = 1,
			okay = 1,
			brb = 1,
			back = 1,
			lmao = 1,
			xd = 1,
			nice = 1,
			w = 1,
			l = 1,
			yes = 1,
			no = 1,
		}

		local pinnn34 = 1

		while pinnn34 <= #tbl31 do
			local pinn102 = tbl31[pinnn34]
			local text = pinn102.text
			local t = pinn102.t
			local str11 = pinn102.text:lower()

			if str11:find("%.%.%.%s*$") or str11:find(":%s*$") or str11:find("%sis%s*$") or str11:find("?%s*$") then
				for i = pinnn34 + 1, math.min(pinnn34 + 3, #tbl31) do
					local pinn103 = tbl31[i]

					if not ((pinn103.t or 0) - (pinn102.t or 0) > 90) then
						local pinn104 = 0

						for match2 in pinn103.text:gmatch("[%w']+") do
							pinn104 += 1
						end

						if not (pinn104 > 3) then
							if not tbl32[pinn103.text:lower():match("^%s*(%a+)%s*$") or ""] then
								text = pinn102.text .. " " .. pinn103.text
								t = pinn103.t
								pinn103.__merged = true
								break
							else
								continue
							end
						end
					end

					break
				end
			end

			if not pinn102.__merged then
				tbl30[#tbl30 + 1] = { text = text, t = t }
			end

			pinnn34 += 1
		end

		local tbl33 = {}
		local pos6 = str9:find(" the reward ", 1, true) or str9:find(" the reward ", 1, true)
		local pos7 = str9:find(" codes are for ", 1, true) or str9:find(" code is for ", 1, true) or str9:find(" codes for ", 1, true) or str9:find(" code for ", 1, true)
		local flag29 = false
		local pinn102 = nil

		for i = #tbl30, 1, -1 do
			local pinn103 = tbl30[i]
			local pinn104 = " "
			local str11 = " " .. pinn103.text:lower():gsub("[^%w'?]+", " "):gsub("'", "") .. pinn104

			if pinn103.text:lower():gsub("%s+", " ") ~= str10 then
				local pinn105 = pinnfn66(pinn103.text)
				local pinn106 = pinnfn64(pinn103.text)
				local pinn107 = pinnfn63(pinn103.text)
				local pinn108 = pinnfn67(str11)
				local pos8 = pinn103.text:find("?", 1, true)
				local pos9

				if pos8 then
					local pinn109 = 0
					pos9 = #pinnfn63(pinn103.text:sub(pos8 + 1)) > pinn109 or pinn103.text:sub(pos8 + 1):find("%d")
				else
					pos9 = pos8
				end

				local match2 = str11:match("^%s*(%a+)")
				local flag30 = pos8 and not pos9

				if not flag30 then
					flag30 = (match2 == "what" or match2 == "whats" or match2 == "what" or match2 == "which" or match2 == "who" or match2 == "whos" or match2 == "when" or match2 == "where") and not pos8
				end

				local flag31 = (arg4.classify and arg4.classify(pinn103.text) or nil) == "riddle" and str11:find(" code", 1, true) ~= nil and not pinn108
				local tbl34 = {}

				for _, pinn109 in ipairs(pinn106) do
					local flag32 = pinn109.kind == "count" or pinn109.kind == "money" or pinn109.kind == "add" and pos4
					local flag33

					if flag32 then
						flag33 = flag32
					else
						flag33 = pinn109.kind == "mult" and pos5
					end

					flag33 = flag33 or pinn109.kind == "soon" and flag28 and pinnfn62(pinn109.unit, flag28)

					if flag33 then
						tbl34[#tbl34 + 1] = pinn109
					end
				end

				local flag32 = #pinn107 <= 1 and #pinn105 == 0 and #tbl34 == 0
				local flag33 = not flag31

				if flag33 then
					flag33 = not (flag30 and not pinn108)
				end

				if flag33 then
					local pinnn35 = 0
					local flag34 = false

					for _, pinn109 in ipairs(pinn105) do
						if tbl23[pinn109] then
							pinnn35 += 10
							flag34 = true
						end
					end

					if #tbl24 > 0 and not flag34 and not pos2 then
						pinnn35 = -1
					else
						local tbl35 = {}

						for _, pinn109 in ipairs(tbl26) do
							for _, pinn110 in ipairs(pinn107) do
								if not tbl35[pinn109] and pinnfn62(pinn109, pinn110) then
									pinnn35 += pinn109 == "brainrot" and 1 or 3
									tbl35[pinn109] = true
									break
								end
							end
						end

						for i2 = 1, #tbl26 - 1 do
							local flag35 = false

							for i3 = 1, #pinn107 - 1 do
								local pinn109 = pinnfn62(tbl26[i2], pinn107[i3]) and pinnfn62(tbl26[i2 + 1], pinn107[i3 + 1])
								local pinn110

								if pinn109 then
									pinn110 = pinn109
								else
									pinn110 = pinnfn62(tbl26[i2], pinn107[i3 + 1]) and pinnfn62(tbl26[i2 + 1], pinn107[i3])
								end

								if pinn110 then
									flag35 = true
									break
								end
							end

							if flag35 then
								pinnn35 += 3
							end
						end

						for _, pinn109 in ipairs(tbl26) do
							if str11:find(" the " .. pinn109, 1, true) or str11:find(" a " .. pinn109, 1, true) then
								pinnn35 += 2
								break
							end
						end

						for _, pinn109 in ipairs(tbl28) do
							for match3 in str11:gmatch(" my (%a+)") do
								if pinnfn62(pinnfn60(match3), pinn109) then
									pinnn35 += 4
									break
								end
							end
						end

						if flag25 and (str11:find(" im %d+", 1) or str11:find(" i am %d+", 1) or str11:find(" %d+ years", 1) or str11:find(" turn%a* %d+", 1)) then
							pinnn35 += 8
						end

						if flag26 then
							for match3 in str11:gmatch("%a+") do
								if tbl29[match3] then
									pinnn35 += 5
									break
								end
							end
						end

						if flag28 then
							for _, pinn109 in ipairs(tbl34) do
								if pinn109.unit ~= "" and pinnfn62(pinn109.unit, flag28) then
									pinnn35 += 6
									break
								end
							end

							local exitTo = nil

							for _, pinn109 in ipairs(tbl24) do
								if pinn109:lower():find(flag28, 1, true) then
									exitTo = 1
									break
								end
							end

							if exitTo == 1 then
								for _, pinn109 in ipairs(tbl34) do
									if pinn109.unit ~= "" then
										pinnn35 += 4
										break
									end
								end
							end
						end

						for _, pinn109 in ipairs(pinn106) do
							if tbl27[pinn109.value] then
								pinnn35 += 8
								break
							end
						end

						if pos3 and #tbl34 > 0 then
							pinnn35 += 2
						end

						if pos2 and pinn108 and #tbl24 == 0 then
							pinnn35 += 5

							if str11:find(" prize", 1, true) or str11:find(" reward", 1, true) then
								pinnn35 += 8
							end

							if pos7 and str11:find("code", 1, true) and str11:find("is", 1, true) then
								pinnn35 += 4
							end

							if pos6 and not flag29 then
								pinnn35 += 4
								flag29 = true
							end
						end

						if flag27 and #pinn105 > 0 then
							pinnn35 += 5
						end
					end

					local pinnn36 = arg3 - (pinn103.t or arg3)

					if pinnn35 >= 0 then
						tbl33[#tbl33 + 1] = {
							e = pinn103,
							score = pinnn35,
							age = pinnn36,
							prize = pinn108,
							names = pinn105,
							realNums = tbl34,
							fact = (#pinn105 > 0 or #tbl34 > 0 or #pinn107 >= 2) and not flag32,
						}

						if pos and not flag32 and not pinn102 then
							pinn102 = tbl33[#tbl33]
						end
					end
				end
			end
		end

		if pinn102 then
			local pinn103 = 0

			pinn102.score = pinn102.score + 6
		end

		local function pinnfn68(arg5)
			return {
				when = arg5.age < 90 and "just now" or arg5.age < 180 and "a while ago" or "earlier this event",
				text = arg5.e.text,
				t = arg5.e.t,
			}
		end

		table.sort(tbl33, function(arg5, arg6)
			if arg5.score ~= arg6.score then
				return arg5.score > arg6.score
			end
			return arg5.age < arg6.age
		end)

		local pinnn35 = flag24 and 3 or 5
		local tbl34 = {}
		local score = tbl33[1] and tbl33[1].score or 0
		local pinn103 = false

		for _, pinn104 in ipairs(tbl33) do
			if not (pinn104.score < pinnn35 or pinn104.score < score * 0.9) then
				if not (pos2 and pinn104.prize and pinn103) then
					tbl34[#tbl34 + 1] = pinnfn68(pinn104)

					if pos2 and pinn104.prize then
						pinn103 = true
					end
				end

				if not (#tbl34 >= 3) then
					continue
				end
			end

			break
		end

		local str11 = "relevant"

		if #tbl34 == 0 then
			if not flag24 then
				return {}, "none"
			end

			if pos3 then
				local pinn104 = nil

				for _, pinn105 in ipairs(tbl33) do
					if #pinn105.realNums > 0 and (not pinn104 or pinn105.age < pinn104.age) then
						pinn104 = pinn105
					end
				end

				if pinn104 then
					tbl34[1] = pinnfn68(pinn104)
				end
			end

			if #tbl34 == 0 then
				local tbl35 = {}

				for _, pinn104 in ipairs(tbl33) do
					if pinn104.fact then
						tbl35[#tbl35 + 1] = pinn104
					end
				end

				table.sort(tbl35, function(arg5, arg6)
					return arg5.age < arg6.age
				end)

				for i = 1, math.min(3, #tbl35) do
					tbl34[#tbl34 + 1] = pinnfn68(tbl35[i])
				end
			end

			str11 = "fallback"

			if #tbl34 == 0 then
				str11 = "none"
			end
		end

		table.sort(tbl34, function(arg5, arg6)
			return (arg5.t or 0) < (arg6.t or 0)
		end)

		return tbl34, str11
	end

	return {}, "specific"
end

_G.__RiddlerResolvePrizeParts = function(arg)
	local str8 = tostring(arg or ""):lower():gsub("^%s*the code is%s*", ""):gsub("^%s*code is%s*", ""):gsub("^%s*the code will be%s*", "")
	local pinn99 = _G.__RiddlerSubjectOf(str8)
	_G.RiddlerLastPrizeDbg = "subject=" .. tostring(pinn99)
	if not pinn99 then
		return nil
	end

	if #_G.__RiddlerFindAnimals(str8) > 1 then
		_G.RiddlerLastPrizeDbg = "two names"
		return nil
	end
	local pos = str8:find(",", 1, true) or str8:find(" and ", 1, true) or str8:find(" plus ", 1, true) or str8:find("+", 1, true)
	local pinn100 = " "
	local str9 = " " .. str8:gsub("[^%w]+", " ") .. pinn100
	local flag24 = (str9:find(" how many ", 1, true) or str9:find(" how much ", 1, true)) and not _G.__RiddlerFindAnimal(str8)
	if not (pos or flag24) then
		_G.RiddlerLastPrizeDbg = "not a list"
		return nil
	end
	local tbl19 = {}

	for match in (str8 .. ","):gmatch("(.-)[,+]") do
		for match2 in (match .. " and "):gmatch("(.-)%s+and%s+") do
			for match3 in (match2 .. " plus "):gmatch("(.-)%s+plus%s+") do
				local str10 = match3:gsub("^%s+", ""):gsub("%s+$", "")

				if str10 ~= "" then
					tbl19[#tbl19 + 1] = str10
				end
			end
		end
	end

	if #tbl19 < 1 or #tbl19 < 2 and not flag24 then
		_G.RiddlerLastPrizeDbg = "parts=" .. #tbl19
		return nil
	end
	local pinn101 = nil

	pcall(function()
		for _, pinn102 in pairs(require(pinn86.Datas.Animals)) do
			if type(pinn102) == "table" and pinn102.DisplayName == pinn99 then
				pinn101 = pinn102
				break
			end
		end
	end)

	local pinn102 = _G.__RiddlerNYTime()
	local pinn103 = _G.__RiddlerCodeName(pinn99)
	local tbl20 = {}
	local tbl21 = {}

	for match in _G.__RiddlerFold(pinn99):gmatch("%a+") do
		tbl21[match] = true
	end

	local tbl22 = {
		the = 1,
		of = 1,
		a = 1,
		an = 1,
		is = 1,
		it = 1,
		its = 1,
		this = 1,
		that = 1,
		one = 1,
		brainrot = 1,
		brainrots = 1,
		prize = 1,
		reward = 1,
		pet = 1,
		code = 1,
		what = 1,
		whats = 1,
		["over"] = 1,
		["in"] = 1,
		caps = 1,
		all = 1,
		colour = 1,
		color = 1,
		colours = 1,
		colors = 1,
		rarity = 1,
		income = 1,
		name = 1,
		exist = 1,
		exists = 1,
		count = 1,
		how = 1,
		many = 1,
		much = 1,
		number = 1,
		per = 1,
		second = 1,
		make = 1,
		makes = 1,
		earn = 1,
		earns = 1,
		generation = 1,
		s = 1,
		plus = 1,
		called = 1,
		does = 1,
		have = 1,
		has = 1,
		his = 1,
		her = 1,
		their = 1,
		main = 1,
		body = 1,
	}

	local function pinnfn60(arg2)
		for match in arg2:gmatch("%a+") do
			if not tbl22[match] and not tbl21[match] then
				return false
			end
		end

		return true
	end

	local flag25 = nil

	for _, pinn104 in ipairs(tbl19) do
		local str10 = " " .. _G.__RiddlerFold(pinn104):gsub("[^%w]+", " ") .. " "
		local str11 = nil

		if str10:find(" sammy ", 1, true) then
			str11 = "SAMMY"
		elseif str10:find(" my age ", 1, true) then
			str11 = "AGE"
		elseif str10:find(" my cat", 1, true) then
			str11 = "NOVA"
		elseif str10:find(" my favou?rite colou?r", 1) or str10:find(" my fav colou?r", 1) then
			str11 = "BLUE"
		elseif str10:find(" colou?r", 1) then
			if pinnfn60(str10) then
				str11 = _G.__RiddlerColourOf(pinn99)
			else
				local tbl23 = {
					grass = "GREEN",
					leaves = "GREEN",
					leaf = "GREEN",
					trees = "GREEN",
					tree = "GREEN",
					frog = "GREEN",
					sky = "BLUE",
					ocean = "BLUE",
					sea = "BLUE",
					water = "BLUE",
					sun = "YELLOW",
					banana = "YELLOW",
					bananas = "YELLOW",
					lemon = "YELLOW",
					cheese = "YELLOW",
					snow = "WHITE",
					clouds = "WHITE",
					cloud = "WHITE",
					milk = "WHITE",
					paper = "WHITE",
					blood = "RED",
					fire = "RED",
					tomato = "RED",
					strawberry = "RED",
					apple = "RED",
					rose = "RED",
					night = "BLACK",
					coal = "BLACK",
					orange = "ORANGE",
					oranges = "ORANGE",
					carrot = "ORANGE",
					pumpkin = "ORANGE",
					chocolate = "BROWN",
					dirt = "BROWN",
					mud = "BROWN",
					wood = "BROWN",
					pig = "PINK",
					flamingo = "PINK",
					grape = "PURPLE",
					grapes = "PURPLE",
					lavender = "PURPLE",
				}

				for match in str10:gmatch("%a+") do
					if tbl23[match] then
						str11 = tbl23[match]
						break
					end
				end

				if not str11 then
					return nil
				end
			end
		elseif str10:find(" rarity ", 1, true) then
			if not pinnfn60(str10) then
				return nil
			end
			local str12

			if pinn101 then
				str12 = tostring(pinn101.Rarity):gsub("[^%w]", ""):upper()
			else
				str12 = pinn101
			end

			str11 = str12 or nil
		elseif str10:find(" date ", 1, true) or str10:find(" day ", 1, true) then
			str11 = tostring(tonumber(os.date("!%d", pinn102)))
		elseif str10:find(" month ", 1, true) then
			str11 = os.date("!%B", pinn102):upper()
		elseif str10:find(" year ", 1, true) then
			str11 = os.date("!%Y", pinn102)
		elseif str10:find(" income ", 1, true) or str10:find(" per second ", 1, true) or str10:find(" make", 1, true) or str10:find(" earn", 1, true) then
			if not pinnfn60(str10) then
				return nil
			end
			str11 = pinn101 and pinn101.Generation and ("%d"):format(pinn101.Generation) or nil
		else
			local pos2 = str10:find(" exist", 1) or str10:find(" count", 1, true) or str10:find(" how many ", 1, true)

			if pos2 then
				local function pinnfn61()
					local ok, result = pcall(_G.__RiddlerExistCounts)
					if not (ok and type(result) == "table") then
						return false
					end

					for _, pinn105 in ipairs(result) do
						if pinn105.name == pinn99 and type(pinn105.muts) == "table" then
							for k, mut in pairs(pinn105.muts) do
								local str12 = tostring(k):lower()
								if str12 ~= "its" and str10:find(" " .. str12 .. " ", 1, true) and type(mut) == "number" then
									str11 = tostring(mut)
									return true
								end
							end
						end
					end

					return false
				end

				pos2 = pinnfn61()
			end

			if not pos2 then
				if str10:find(" how many ", 1, true) or str10:find(" how much ", 1, true) or str10:find(" how many ", 1) or str10:find(" the number ", 1, true) then
					local riddlerSubject = _G.__RiddlerSubject
					local match = type(riddlerSubject) == "table" and riddlerSubject.name == pinn99 and not riddlerSubject.prize and tostring(riddlerSubject.text):match("(%d[%d,]*)") or nil

					if match then
						str11 = match:gsub(",", "")
					else
						local ok, result = pcall(_G.__RiddlerExistCounts)

						if ok and type(result) == "table" then
							for _, pinn105 in ipairs(result) do
								if pinn105.name == pinn99 then
									str11 = tostring(pinn105.n)
									break
								end
							end
						end
					end
				elseif str10:find(" name ", 1, true) or str10:find(" called ", 1, true) then
					if not pinnfn60(str10) then
						return nil
					end
					str11 = pinn103
				else
					local pos3 = str10:find(" the brainrot ", 1, true) or str10:find(" the reward ", 1, true) or str10:find(" it ", 1, true) or str10:find(" that one ", 1, true)

					if pos3 then
						local function pinnfn61()
							local tbl23 = {
								what = 1,
								is = 1,
								im = 1,
								i = 1,
								am = 1,
								doing = 1,
								the = 1,
								code = 1,
								codes = 1,
								["for"] = 1,
								of = 1,
								it = 1,
								its = 1,
								this = 1,
								that = 1,
								he = 1,
								his = 1,
								one = 1,
								prize = 1,
								brainrot = 1,
								giving = 1,
								away = 1,
								which = 1,
								a = 1,
								an = 1,
								gonna = 1,
								be = 1,
								are = 1,
								we = 1,
								you = 1,
								u = 1,
								ur = 1,
								my = 1,
								to = 1,
							}

							for match in str10:gmatch("%a+") do
								if not tbl23[match] then
									return false
								end
							end

							return true
						end

						pos3 = pinnfn61()
					end

					if pos3 then
						str11 = pinn103
					elseif str10:match("^%s*(%d+)%s*$") then
						str11 = str10:match("(%d+)")
					end
				end
			end
		end

		if not str11 and str10:find(" colou?r", 1) and not flag25 then
			str11 = "[COLOUR]"
			flag25 = true
		end

		if not str11 then
			_G.RiddlerLastPrizeDbg = "unresolved part: " .. pinn104
			_G.__RiddlerPrizeTemplate = nil
			return nil
		end

		tbl20[#tbl20 + 1] = str11
	end

	if flag25 then
		_G.__RiddlerPrizeTemplate = { name = pinn99, code = table.concat(tbl20), t = os.time(), riddle = arg }
		_G.RiddlerLastPrizeDbg = "colour gap: " .. table.concat(tbl20)
		return nil
	end

	_G.__RiddlerPrizeTemplate = nil
	local str10 = table.concat(tbl20)
	_G.RiddlerLastPrizeParts = ("%s -> %s"):format(arg, str10)
	return str10
end

_G.__RiddlerModelColour = function(arg)
	local function pinnfn60(arg2)
		local pinn99, pinn100, pinn101 = arg2:ToHSV()
		if pinn101 < 0.16 then
			return "black"
		end

		if pinn100 < 0.18 then
			return pinn101 > 0.8 and "white" or "gray"
		end
		local pinnn34 = pinn99 * 360
		if pinnn34 < 15 or pinnn34 >= 345 then
			return "red"
		end

		if pinnn34 < 45 then
			return "orange"
		end

		if pinnn34 < 68 then
			return "yellow"
		end

		if pinnn34 < 170 then
			return "green"
		end

		if pinnn34 < 195 then
			return "cyan"
		end

		if pinnn34 < 255 then
			return "blue"
		end

		if pinnn34 < 290 then
			return "purple"
		end
		return "pink"
	end

	local pinn99 = nil

	for _, descendant in ipairs(workspace:GetDescendants()) do
		if descendant:IsA("Model") and descendant.Name == arg then
			pinn99 = descendant
			break
		else
			pinn99 = nil
		end
	end

	if not pinn99 then
		return nil
	end
	local tbl19 = {}
	local pinnn34 = 0

	for _, descendant in ipairs(pinn99:GetDescendants()) do
		if descendant:IsA("BasePart") and descendant.Transparency < 0.5 and descendant.Name ~= "HumanoidRootPart" then
			local pinnn35 = descendant.Size.X * descendant.Size.Y * descendant.Size.Z
			local pinn100 = pinnfn60(descendant.Color)
			tbl19[pinn100] = (tbl19[pinn100] or 0) + pinnn35
			pinnn34 += pinnn35
		end
	end

	local pinn100, pinn101, pinn102 = pairs(tbl19)
	local pinnn35 = 0
	local pinn103 = nil

	for k, pinn104 in pinn100, pinn101, pinn102 do
		if pinnn35 < pinn104 then
			pinnn35 = pinn104
			pinn103 = k
		end
	end

	if not pinn103 or pinnn34 <= 0 or pinnn35 / pinnn34 < 0.45 then
		return nil
	end
	return pinn103, math.floor(pinnn35 / pinnn34 * 100)
end

_G.__RiddlerExpandUnits = function(arg)
	if type(arg) ~= "string" then
		return arg
	end
	local str8 = arg:gsub("%s*per%s+sec%w*", ""):gsub("%s*/%s*s$", "")
	local tbl19 = { K = 1000, M = 1000000, B = 1000000000, T = 1e12 }
	local match, pinn99, pinn100, pinn101 = str8:match("^(.-)(%d+%.?%d*)%s*([KMBTkmbt])(%d*)$")

	if not pinn99 then
		match, pinn99, pinn100, pinn101 = str8:match("^(.-)(%d+%.?%d*)%s*([KMBTkmbt])(%a+)$")
		if not pinn99 then
			return arg
		end

		local tbl20 = {
			SAMMY = 1,
			SPYDERSAMMY = 1,
			NOVA = 1,
			JANUARY = 1,
			FEBRUARY = 1,
			MARCH = 1,
			APRIL = 1,
			MAY = 1,
			JUNE = 1,
			JULY = 1,
			AUGUST = 1,
			SEPTEMBER = 1,
			OCTOBER = 1,
			NOVEMBER = 1,
			DECEMBER = 1,
		}

		if not (pinn99:find(".", 1, true) or tbl20[pinn101:upper()]) then
			return arg
		end
	end

	local pinn102 = tbl19[pinn100:upper()]
	local num = tonumber(pinn99)
	if not pinn102 or not num then
		return arg
	end
	local str9 = match .. ("%d"):format(math.floor(num * pinn102 + 0.5)) .. pinn101

	if str9 ~= arg then
		_G.RiddlerLastUnitExpand = arg .. " -> " .. str9
	end

	return str9
end

_G.__RiddlerNameHit = function(arg, arg2)
	if #arg2 < 5 then
		return false
	end

	if arg:find(arg2, 1, true) then
		return true
	end
	local str8 = arg2:gsub("es$", ""):gsub("s$", "")
	return #str8 >= 4 and arg:find(str8, 1, true) ~= nil
end

_G.__RiddlerExistCounts = function()
	local ok, result = pcall(require, pinn86.Packages:FindFirstChild("Replion"))
	if not ok or type(result) ~= "table" then
		return nil
	end
	local value = rawget(result, "GetGlobalData")
	if type(value) ~= "function" then
		return nil
	end
	local getupvalue_ = debug and debug.getupvalue or getupvalue
	if type(getupvalue_) ~= "function" then
		return nil
	end
	local flag24 = nil

	for i = 1, 13 do
		local ok2, result2, result3 = pcall(getupvalue_, value, i)
		flag24 = nil

		if ok2 then
			flag24 = result3 ~= nil and result3 or result2
			if not (type(flag24) == "table" and rawget(flag24, "PublicExistCounts") ~= nil) then
				flag24 = nil
				continue
			end
		end

		break
	end

	if type(flag24) ~= "table" then
		return nil
	end
	local value2 = rawget(flag24, "PublicExistCounts")
	if type(value2) ~= "table" then
		return nil
	end
	local value3 = rawget(value2, "Data")
	local pinn99 = "table"
	local value4 = type(value3) == pinn99 and rawget(value3, "Value") or nil
	local pinn100 = "table"
	if type(value4) ~= pinn100 then
		return nil
	end
	local tbl19 = {}

	for k, pinn101 in pairs(value4) do
		local value5 = type(pinn101) == "table" and rawget(pinn101, "total_exists") or nil

		if type(value5) == "number" and type(k) == "string" then
			tbl19[#tbl19 + 1] = {
				name = k,
				n = value5,
				muts = rawget(pinn101, "mutations"),
				owners = rawget(pinn101, "unique_owners"),
			}
		end
	end

	if #tbl19 == 0 then
		return _G.__RiddlerExistCache and _G.__RiddlerExistCache() or nil
	end

	table.sort(tbl19, function(arg, arg2)
		return arg.n < arg2.n
	end)

	if writefile then
		local tbl20 = { ("#%d"):format(os.time()) }

		for _, pinn101 in ipairs(tbl19) do
			tbl20[#tbl20 + 1] = pinn101.name .. "\t" .. tostring(pinn101.n)
		end

		local concat = table.concat
		pcall(writefile, ("riddler_exists_%s.txt"):format(tostring(game.PlaceId)), concat(tbl20, "\n"))
	end

	return tbl19
end

_G.__RiddlerExistCache = function()
	if readfile and isfile then
		local str8 = ("riddler_exists_%s.txt"):format(tostring(game.PlaceId))

		local ok, result = pcall(function()
			if isfile(str8) then
				return readfile(str8)
			end
		end)

		if not ok or type(result) ~= "string" or result == "" then
			return nil
		end
		local tbl19 = {}
		local cachedAt = nil

		for match in result:gmatch("[^\n]+") do
			local match2 = match:match("^#(%d+)$")

			if match2 then
				cachedAt = tonumber(match2)
			else
				local match3, pinn99 = match:match("^(.-)\t(%d+)$")

				if match3 and pinn99 then
					tbl19[#tbl19 + 1] = { name = match3, n = tonumber(pinn99) }
				end
			end
		end

		if #tbl19 == 0 then
			return nil
		end

		if cachedAt and os.time() - cachedAt > 2592000 then
			return nil
		end

		table.sort(tbl19, function(arg, arg2)
			return arg.n < arg2.n
		end)

		tbl19.cachedAt = cachedAt
		return tbl19
	end

	return nil
end

_G.__RiddlerSnapshotMeta = function()
	local pinn99 = pinn86:FindFirstChild("Datas")
	local tbl19 = {}

	local function pinnfn60(arg, arg2, arg3)
		local pinn100 = pinnfn34(pinn99 and pinn99:FindFirstChild(arg2))
		if type(pinn100) ~= "table" then
			return
		end

		for k, pinn101 in pairs(pinn100) do
			local flag24 = type(pinn101) == "table"

			if flag24 then
				flag24 = tostring(pinn101[arg3] or pinn101.Name or k)
			end

			flag24 = flag24 or tostring(k)

			if flag24 ~= "" then
				tbl19[arg .. "\t" .. flag24] = true
			end
		end
	end

	pinnfn60("T", "Traits", "Display")
	pinnfn60("M", "Mutations", "Display")
	pinnfn60("L", "LuckyBlocks", "Display")
	pinnfn60("S", "ShopItems", "Name")
	pinnfn60("R", "Rarities", "Name")
	pinnfn60("F", "RodsShopItems", "Name")
	local items = pinn86:FindFirstChild("Items")

	if items then
		for _, child in ipairs(items:GetChildren()) do
			if child:IsA("Tool") then
				tbl19["G\t" .. child.Name] = true
			end
		end
	end

	local controllers = pinn86:FindFirstChild("Controllers")
	controllers = controllers and controllers:FindFirstChild("EventController")
	controllers = controllers and controllers:FindFirstChild("Events")

	if controllers then
		for _, child in ipairs(controllers:GetChildren()) do
			tbl19["E\t" .. child.Name] = true
		end
	end

	if next(tbl19) == nil then
		return {}
	end
	local str8 = ("riddler_seen_meta_%s.txt"):format(tostring(game.PlaceId))
	local tbl20 = {}

	if readfile and isfile then
		local ok, result = pcall(function()
			if isfile(str8) then
				return readfile(str8)
			end
		end)

		if ok then
			local pinn100 = "string"
			ok = type(result) == pinn100
		end

		if ok then
			for match in result:gmatch("[^\n]+") do
				local match2, pinn100 = match:match("^(.-\t.-)\t(.*)$")

				if match2 then
					tbl20[match2] = tonumber(pinn100) or 0
				end
			end
		end
	end

	if type(_G.__RiddlerShippedMeta) == "string" then
		for match in _G.__RiddlerShippedMeta:gmatch("[^\n]+") do
			local match2 = match:match("^%s*(.-)%s*$")

			if match2 ~= "" and match2:find("\t") and tbl20[match2] == nil then
				tbl20[match2] = 0
			end
		end
	end

	local flag24 = next(tbl20) ~= nil

	local tbl21 = {
		T = "trait",
		M = "mutation",
		L = "lucky block",
		S = "shop item",
		E = "event",
		G = "gear",
		R = "rarity",
		F = "fishing rod",
	}

	local tbl22 = {}
	local now2 = os.time()

	if flag24 then
		for k in pairs(tbl19) do
			local pinn100 = tbl20[k]

			if pinn100 == nil or pinn100 > 0 and now2 - pinn100 < 604800 then
				local match, pinn101 = k:match("^(.-)\t(.*)$")
				tbl22[#tbl22 + 1] = { kind = tbl21[match] or match, name = pinn101, firstSeen = pinn100 or now2 }
			end
		end

		table.sort(tbl22, function(arg, arg2)
			if arg.kind ~= arg2.kind then
				return arg.kind < arg2.kind
			end
			return arg.name < arg2.name
		end)
	end

	if writefile then
		local tbl23 = {}

		for k in pairs(tbl19) do
			local pinn100 = tbl20[k]

			if pinn100 == nil then
				pinn100 = flag24 and now2 or 0
			end

			tbl23[#tbl23 + 1] = k .. "\t" .. tostring(pinn100)
		end

		for k, pinn100 in pairs(tbl20) do
			if not tbl19[k] then
				tbl23[#tbl23 + 1] = k .. "\t" .. tostring(pinn100 or 0)
			end
		end

		table.sort(tbl23)
		pcall(writefile, str8, table.concat(tbl23, "\n"))
	end

	return tbl22, flag24
end

_G.__RiddlerSnapshotNew = function()
	local tbl19 = {}
	local datas = pinn86:FindFirstChild("Datas")
	local pinn99 = pinnfn34(datas and datas:FindFirstChild("Animals"))
	if type(pinn99) ~= "table" then
		return tbl19
	end
	local tbl20 = {}

	for _, pinn100 in pairs(pinn99) do
		if type(pinn100) == "table" and pinn100.DisplayName then
			tbl20[tostring(pinn100.DisplayName)] = tonumber(pinn100.Generation) or 0
		end
	end

	local str8 = ("riddler_seen_%s.txt"):format(tostring(game.PlaceId))
	local tbl21 = {}

	if readfile and isfile then
		local ok, result = pcall(function()
			if isfile(str8) then
				return readfile(str8)
			end
		end)

		if ok and type(result) == "string" then
			for match in result:gmatch("[^\n]+") do
				local match2, pinn100, pinn101 = match:match("^(.-)\t([^\t]*)\t?(.*)$")
				match = match2 or match

				if match ~= "" then
					tbl21[match] = tonumber(pinn101) or 0
				end
			end
		end
	end

	if next(tbl21) == nil and type(_G.__RiddlerShippedBaseline) == "string" then
		for match in _G.__RiddlerShippedBaseline:gmatch("[^\n]+") do
			local match2 = match:match("^%s*(.-)%s*$")

			if match2 ~= "" then
				tbl21[match2] = 0
			end
		end

		local flag24 = next(tbl21) ~= nil
	end

	local flag24 = next(tbl21) ~= nil
	local now2 = os.time()

	if flag24 then
		for k, pinn100 in pairs(tbl20) do
			if tbl21[k] == nil then
				tbl19[#tbl19 + 1] = { name = k, gen = pinn100, firstSeen = now2, ageHours = 0 }
			elseif tbl21[k] > 0 and now2 - tbl21[k] < 604800 then
				tbl19[#tbl19 + 1] = {
					name = k,
					gen = pinn100,
					firstSeen = tbl21[k],
					ageHours = math.floor((now2 - tbl21[k]) / 3600),
				}
			end
		end

		table.sort(tbl19, function(arg, arg2)
			if (arg.firstSeen or 0) == (arg2.firstSeen or 0) then
				return (arg.gen or 0) > (arg2.gen or 0)
			end

			return (arg.firstSeen or 0) > (arg2.firstSeen or 0)
		end)
	end

	if writefile then
		local tbl22 = {}

		for k, pinn100 in pairs(tbl20) do
			local pinnn34

			if tbl21[k] ~= nil then
				pinnn34 = tbl21[k]
			elseif flag24 then
				pinnn34 = now2
			else
				pinnn34 = 0
			end

			tbl22[#tbl22 + 1] = k .. "\t" .. tostring(pinn100) .. "\t" .. tostring(pinnn34)
		end

		for k, pinn100 in pairs(tbl21) do
			if tbl20[k] == nil then
				local pinnn34 = #tbl22 + 1
				local pinn101 = tostring
				pinn100 = pinn100 or 0
				tbl22[pinnn34] = k .. "\t0\t" .. pinn101(pinn100)
			end
		end

		table.sort(tbl22)
		pcall(writefile, str8, table.concat(tbl22, "\n"))
	end

	return tbl19, flag24
end

_G.__RiddlerCurrentUpdate = function()
	local shared = pinn86:FindFirstChild("Shared")
	local pinn99 = _G.__RiddlerRequireIfLoaded(shared and shared:FindFirstChild("Updates"))
	if type(pinn99) ~= "table" then
		return nil
	end
	local value = rawget(pinn99, "List")
	if type(value) ~= "table" then
		return nil
	end
	local pinn100 = nil
	local str8 = nil

	for k, pinn101 in pairs(value) do
		local num = type(pinn101) == "table" and tonumber(rawget(pinn101, "UnixTimeStamp")) or nil

		if not pinn100 or num and num > pinn100 then
			str8 = tostring(k)
			pinn100 = num
		end
	end

	return str8, pinn100
end

task.spawn(function()
	local tbl19 = {}

	while true do
		task.wait(5)

		if not pcall(function()
			local activeEvents = playerGui:FindFirstChild("ActiveEvents")
			activeEvents = activeEvents and activeEvents:FindFirstChild("ActiveEvents")
			if not activeEvents then
				return
			end

			for _, riddlerDevBaseEvent in ipairs(_G.__RiddlerDevBaseEvents) do
				local pinn99 = activeEvents:FindFirstChild(riddlerDevBaseEvent)

				if pinn99 and pinn99.Visible and not tbl19[riddlerDevBaseEvent] then
					tbl19[riddlerDevBaseEvent] = true
					local tbl20 = { "=== " .. riddlerDevBaseEvent .. " @ " .. os.date("%Y-%m-%d %H:%M:%S") .. " ===" }
					local plots = pinn88:FindFirstChild("Plots")

					if plots then
						for _, child in ipairs(plots:GetChildren()) do
							local tbl21 = {}

							for k, pinn100 in pairs(child:GetAttributes()) do
								tbl21[#tbl21 + 1] = tostring(k) .. "=" .. tostring(pinn100)
							end

							table.sort(tbl21)
							tbl20[#tbl20 + 1] = "plot " .. child.Name:sub(1, 8) .. ": " .. table.concat(tbl21, ",")
						end
					end

					for _, child in ipairs(pinn88:GetChildren()) do
						local str8 = child.Name:lower()

						if str8:find("sammy") or str8:find("caylus") or str8:find("steak") or str8:find("rusty") or str8:find("base") then
							local tbl21 = {}

							for k, pinn100 in pairs(child:GetAttributes()) do
								tbl21[#tbl21 + 1] = tostring(k) .. "=" .. tostring(pinn100)
							end

							table.sort(tbl21)
							tbl20[#tbl20 + 1] = "ws " .. child.Name .. " (" .. child.ClassName .. "): " .. table.concat(tbl21, ",")
						end
					end

					if writefile and appendfile then
						if isfile and isfile("riddler_devbase_capture.txt") then
							pcall(appendfile, "riddler_devbase_capture.txt", "\n" .. table.concat(tbl20, "\n"))
						else
							pcall(writefile, "riddler_devbase_capture.txt", table.concat(tbl20, "\n"))
						end
					end
				elseif pinn99 and not pinn99.Visible then
					tbl19[riddlerDevBaseEvent] = nil
				end
			end
		end) then
			task.wait(30)
		end
	end
end)

_G.__RiddlerReadUpdateItems = function()
	local tbl19 = {}
	local datas = pinn86:FindFirstChild("Datas")
	if not datas then
		return tbl19
	end
	local riddlerGetConstants = _G.__RiddlerGetConstants
	if not riddlerGetConstants then
		return tbl19
	end

	for _, pinn99 in ipairs({ "ShopItems", "Shop", "Items", "MerchShopData", "RodsShopItems" }) do
		local pinn100 = datas:FindFirstChild(pinn99)

		if pinn100 then
			local pinn101 = _G.__RiddlerRequireIfLoaded(pinn100)
			local pinn102 = "table"

			if type(pinn101) == pinn102 then
				for k, pinn103 in pairs(pinn101) do
					local pinn104 = "table"

					if type(pinn103) == pinn104 and type(pinn103.IsEnabled) == "function" then
						local ok, result = pcall(riddlerGetConstants, pinn103.IsEnabled)
						ok = ok and type(result) == "table"
						local pinn105 = nil

						if ok then
							pinn105 = nil

							for _, pinn106 in pairs(result) do
								if type(pinn106) == "string" and pinn106:match("^Update%-") then
									pinn105 = pinn106
									break
								else
									pinn105 = nil
								end
							end
						end

						if pinn105 then
							local tbl20 = {}

							if pinn103.Price then
								tbl20[#tbl20 + 1] = _G.__RiddlerShortNum(pinn103.Price) .. " " .. tostring(pinn103.Currency or "cash")
							end

							if pinn103.RebirthRequired then
								tbl20[#tbl20 + 1] = "needs rebirth " .. tostring(pinn103.RebirthRequired)
							end

							if pinn103.Description then
								tbl20[#tbl20 + 1] = tostring(pinn103.Description):sub(1, 60)
							end

							tbl19[#tbl19 + 1] = {
								source = pinn100.Name,
								name = tostring(pinn103.Name or pinn103.DisplayName or k),
								facts = tbl20,
								stamp = pinn105,
							}
						end
					end
				end
			end
		end
	end

	return tbl19
end

_G.__RiddlerTraitIncome = function(arg)
	local str8 = tostring(arg or ""):lower()
	if str8 == "" then
		return nil
	end
	local datas = pinn86:FindFirstChild("Datas")
	local pinn99 = pinnfn34(datas and datas:FindFirstChild("Animals"))
	local pinn100 = pinnfn34(datas and datas:FindFirstChild("Traits"))
	local flag24 = type(pinn99) ~= "table"

	if not flag24 then
		local pinn101 = "table"
		flag24 = type(pinn100) ~= pinn101
	end

	if flag24 then
		return nil
	end

	local function pinnfn60(arg2)
		return (tostring(arg2):lower():gsub("[^%w]", ""))
	end

	local function pinnfn61(arg2, arg3, arg4)
		local pinn101 = pinnfn60(arg2)
		local tbl19 = nil
		local pinn102 = nil

		local function pinnfn62(arg5, arg6, arg7, arg8)
			if not pinn102 or arg8 > pinn102 then
				tbl19 = { key = arg6, data = arg7, name = arg5 }
				pinn102 = arg8
			end
		end

		for k, pinn103 in pairs(arg3) do
			local pinn104 = arg4(k, pinn103)
			local pinn105 = "string"

			if type(pinn104) == pinn105 and #pinn104 >= 3 then
				local pinn106 = pinnfn60(pinn104)

				if 3 <= #pinn106 then
					if pinn101:find(pinn106, 1, true) then
						pinnfn62(pinn104, k, pinn103, #pinn106 + 100)
					else
						local pinnn34 = 0

						for i = 1, math.max(1, #pinn101 - 5) do
							local pinnn35 = 0

							while pinnn35 < #pinn106 and pinn101:sub(i + pinnn35, i + pinnn35) == pinn106:sub(pinnn35 + 1, pinnn35 + 1) do
								pinnn35 += 1
							end

							if pinnn35 > pinnn34 then
								pinnn34 = pinnn35
							end
						end

						if 6 <= pinnn34 then
							pinnfn62(pinn104, k, pinn103, pinnn34)
						end
					end
				end
			end
		end

		return tbl19
	end

	local tbl19 = pinnfn61(str8, pinn99, function(arg2, arg3)
		local flag25 = type(arg3) == "table"

		if flag25 then
			flag25 = tostring(arg3.DisplayName or arg2)
		end

		return flag25 or nil
	end)

	if not tbl19 then
		local riddlerNameCandidates = _G.__RiddlerNameCandidates and _G.__RiddlerNameCandidates(arg)

		if riddlerNameCandidates and #riddlerNameCandidates > 0 then
			for k, pinn101 in pairs(pinn99) do
				local pinn102 = "table"
				local flag25 = type(pinn101) == pinn102

				if flag25 then
					flag25 = tostring(pinn101.DisplayName or k) == riddlerNameCandidates[1]
				end

				if flag25 then
					tbl19 = { key = k, data = pinn101, name = riddlerNameCandidates[1] }
					break
				end
			end
		end
	end

	if tbl19 and (str8:find("new", 1, true) or str8:find("latest", 1, true) or str8:find("came out", 1, true) or str8:find("just added", 1, true)) then
		local tbl20 = {}
		local pinn101 = ipairs
		local riddlerSnapshotNew = _G.__RiddlerSnapshotNew and _G.__RiddlerSnapshotNew() or {}

		for _, pinn102 in pinn101(riddlerSnapshotNew) do
			tbl20[pinn102.name] = true
		end

		if not tbl20[tbl19.name] then
			local riddlerNameCandidates = _G.__RiddlerNameCandidates and _G.__RiddlerNameCandidates(arg)
			local pinn102 = ipairs
			local tbl21 = riddlerNameCandidates or {}
			local exitTo = nil

			for _, pinn103 in pinn102(tbl21) do
				if tbl20[pinn103] then
					exitTo = 1
					break
				end
			end

			if exitTo == 1 then
				for k, pinn103 in pairs(pinn99) do
					local flag25 = type(pinn103) == "table"

					if flag25 then
						flag25 = tostring(pinn103.DisplayName or k) == s15
					end

					if flag25 then
						tbl19 = { key = k, data = pinn103, name = s15 }
						break
					end
				end
			end
		end
	end

	if not tbl19 then
		return nil
	end
	local pinn101 = 1
	local pos = str8:find(tbl19.name:lower(), pinn101, true)

	if pos then
		local pinn102 = " "
		str8 = str8:sub(1, pos - 1) .. pinn102 .. str8:sub(pos + #tbl19.name)
	end

	local tbl20 = {}
	local tbl21 = {}
	local str9 = str8

	for i = 1, 4 do
		local pinn102 = pinnfn61(str9, pinn100, function(arg2, arg3)
			local flag25 = type(arg3) == "table"

			if flag25 then
				flag25 = tostring(arg3.Display or arg2)
			end

			return flag25 or tostring(arg2)
		end)

		if not (not pinn102 or tbl21[pinn102.name]) then
			tbl21[pinn102.name] = true
			tbl20[#tbl20 + 1] = pinn102
			local pos2 = str9:find(pinn102.name:lower(), 1, true)

			if pos2 then
				local pinn103 = " "
				str9 = str9:sub(1, pos2 - 1) .. pinn103 .. str9:sub(pos2 + #pinn102.name)
				continue
			end
		end

		break
	end

	local pinn102 = pinnfn34(datas and datas:FindFirstChild("Mutations"))
	local pinn103 = nil

	if type(pinn102) == "table" then
		pinn103 = pinnfn61(str8, pinn102, function(arg2)
			return tostring(arg2)
		end)
	end

	local num = tonumber(tbl19.data.Generation)
	if not num then
		return nil
	end

	if #tbl20 == 0 and not pinn103 then
		return ("%s earns %s per second with no trait or mutation applied. Answer with that figure."):format(tbl19.name, _G.__RiddlerShortNum(num))
	end
	local tbl22 = {}
	local num2 = pinn103 and type(pinn103.data) == "table" and tonumber(pinn103.data.Modifier)
	local pinnn34 = 1

	if num2 then
		pinnn34 = 1 + tonumber(pinn103.data.Modifier)
		tbl22[#tbl22 + 1] = ("%s mutation +%s"):format(pinn103.name, tostring(pinn103.data.Modifier))
	end

	local flag25 = false

	for _, pinn104 in ipairs(tbl20) do
		if pinn104.name == "Sleepy" then
			tbl22[#tbl22 + 1] = "Sleepy halves it"
			flag25 = true
		else
			local num3 = tonumber(pinn104.data and pinn104.data.MultiplierModifier)

			if num3 then
				pinnn34 += num3
				tbl22[#tbl22 + 1] = ("%s +%s"):format(pinn104.name, tostring(num3))
			end
		end
	end

	local pinnn35 = num * pinnn34

	if flag25 then
		pinnn35 *= 0.5
	end

	local riddlerShortNum = _G.__RiddlerShortNum
	return ("%s base income is %s. With %s the multiplier is 1 + %s = %s, giving %s. Answer with the figure only - never append \"/s\" or any unit."):format(tbl19.name, _G.__RiddlerShortNum(num), table.concat(tbl22, ", "), tostring(pinnn34 - 1), tostring(pinnn34), riddlerShortNum(pinnn35))
end

do
	local tbl19 = {
		event = {
			"event",
			"mutation",
			"running",
			"right now",
			"active",
			"currently",
			"we are in",
			"we're in",
			"happening",
			"going on",
			"live",
		},
		luck = {
			"luck",
			"multiplier",
			"boost",
			"odds",
			"chance",
		},
		trait = { "trait" },
		new = {
			"new",
			"newest",
			"added",
			"update",
			"latest",
			"just came",
			"just got",
			"recently",
			"rng machine",
			"this week",
			"came out",
			"come out",
			"comes out",
			"dropped",
			"just drop",
			"released",
			"release",
			"shipped",
			"this update",
			"out today",
		},
		rebirth = { "rebirth", "rebirths" },
		base = { "base", "skin", "plot" },
		income = {
			"per second",
			"per sec",
			"produce",
			"produces",
			"produced",
			"make",
			"makes",
			"earn",
			"earns",
			"earning",
			"generat",
			"income",
			"how much",
			"a second",
			"each second",
			"every second",
			"money per",
			"cash per",
		},
		count = {
			"how many",
			"how much are there",
			"total number",
			"count of",
		},
		describe = {
			"looks like",
			"looks-like",
			"shaped like",
			"resembles",
			"which brainrot is",
			"what brainrot is",
			"brainrot that",
			"wearing",
			"holding",
			"made of",
			"mixed with",
			"crossed with",
		},
		exist = {
			"exist",
			"exists",
			"exist count",
			"how many exist",
			"1 of 1",
			"one of one",
			"1/1",
			"one-of-one",
			"one of a kind",
			"badge",
			"rarest",
			"rarity",
			"least common",
			"hardest to find",
			"lowest exist",
			"fewest",
			"how many are there",
			"own a",
			"owns a",
			"owners",
			"how many people",
			"how many players",
			"total",
			"combined",
			"add up",
			"altogether",
			"sum",
			"mutated",
			"no mutation",
			"without a mutation",
			"with a mutation",
			"unmutated",
		},
		traitrank = {
			"best trait",
			"strongest trait",
			"highest trait",
			"worst trait",
			"lowest trait",
			"weakest trait",
			"which trait",
			"what trait gives",
			"trait multiplier",
			"top trait",
		},
	}

	_G.__RiddlerWordTopics = { income = { "mps", "gen", "gens" } }

	_G.__RiddlerNowWords = {
		"now",
		"current",
		"today",
		"at the moment",
		"this second",
	}

	local tbl20 = {
		"mutation",
		"trait",
		"event",
		"luck",
		"multiplier",
		"boost",
		"weather",
		"gear",
		"tool",
		"rarity",
		"rarities",
		"fishing",
		"rebirth",
	}

	pinnfn59 = function(arg, arg2)
		local str8 = tostring(arg or ""):lower()
		if str8 == "" then
			return true
		end

		if arg2 == "new" then
			for _, pinn99 in ipairs(tbl20) do
				if str8:find(pinn99, 1, true) then
					return false
				end
			end

			local pinn99 = " "
			local str9 = " " .. str8:gsub("[^%w]", " ") .. pinn99
			if str9:find(" rod ", 1, true) or str9:find(" rods ", 1, true) then
				return false
			end
		end

		local pinn99 = ipairs
		local tbl21 = tbl19[arg2] or {}

		for _, pinn100 in pinn99(tbl21) do
			if str8:find(pinn100, 1, true) then
				return true
			end

			if pinn100:find(" ", 1, true) then
				local pinnn34 = 1
				local flag24 = true

				for match in pinn100:gmatch("%S+") do
					local pos = str8:find(match, pinnn34, true)

					if not pos then
						flag24 = false
						break
					else
						pinnn34 = pos + #match
					end
				end

				if flag24 then
					return true
				end
			end
		end

		local riddlerWordTopics = _G.__RiddlerWordTopics and _G.__RiddlerWordTopics[arg2]

		if riddlerWordTopics then
			local pinn100 = " "
			local str9 = " " .. str8:gsub("[%.%-/]", ""):gsub("[^%w]", " ") .. pinn100

			for _, riddlerWordTopic in ipairs(riddlerWordTopics) do
				if str9:find(" " .. riddlerWordTopic .. " ", 1, true) then
					return true
				end
			end
		end

		if arg2 == "event" then
			for _, riddlerNowWord in ipairs(_G.__RiddlerNowWords) do
				if str8:find(riddlerNowWord, 1, true) then
					return true
				end
			end
		end

		return false
	end

	pinnfn56 = function(arg)
		local tbl21 = {}
		local pinn99 = pinnfn59(arg, "event")
		local pinn100 = pinnfn59(arg, "luck")
		local pinn101 = pinnfn59(arg, "trait")
		local pinn102 = pinnfn59(arg, "new")
		local pinn103 = pinnfn59(arg, "rebirth")
		local pinn104 = pinnfn59(arg, "base")
		local pinn105 = pinnfn59(arg, "income")
		local pinn106 = pinnfn59(arg, "count")
		local pinn107 = pinnfn59(arg, "traitrank")
		local pinn108 = pinnfn59(arg, "describe")
		local pinn109 = pinn105 and _G.__RiddlerTraitIncome(arg) or nil

		if pinn102 and not pinn109 then
			local pinn110 = _G.__RiddlerReadNewContent()
			local tbl22 = {}

			for _, pinn111 in ipairs(pinn110) do
				if pinn111.enabled then
					local gen = pinn111.gen
					local str8 = "?"

					if gen then
						if gen >= 1e9 then
							str8 = ("%.4gB"):format(gen / 1e9)
						elseif gen >= 1000000 then
							str8 = ("%.4gM"):format(gen / 1000000)
						elseif gen >= 1000 then
							str8 = ("%.4gK"):format(gen / 1000)
						else
							str8 = tostring(gen)
						end
					end

					tbl22[#tbl22 + 1] = ("%s (%s/s, %s%s%s)"):format(pinn111.name, str8, pinn111.rarity, pinn111.source and ", from the " .. pinn111.source or "", pinn111.stamp and ", " .. pinn111.stamp or "")
				end
			end

			if #tbl22 > 0 then
				tbl21[#tbl21 + 1] = "BRAINROTS ADDED IN THE NEWEST UPDATE: " .. table.concat(tbl22, "; ") .. "  <- these are the ONLY brainrots added in the current update. Any question about \"the new brainrot\", what was \"just added\", or what is new in the RNG machine is answered from THIS line and nowhere else. Match on the income figure when the question names one. If the question DESCRIBES one of these instead of naming it (the new dinosaur, the new flower, the new narwhal), first pick its NAME from this list, then answer with THAT entry's income figure copied digit for digit - never round it and never invent a number not on this line."
			end
		end

		if pinn102 and not pinn109 then
			local str8 = " " .. arg:lower():gsub("[^%w]", " ") .. " "
			local pinn110 = nil

			for _, pinn111 in ipairs({ "brainrot god", "secret", "mythic", "legendary", "epic", "rare", "common", "og" }) do
				if str8:find(" " .. pinn111 .. " ", 1, true) then
					pinn110 = pinn111
					break
				else
					pinn110 = nil
				end
			end

			if pinn110 then
				local pinn111 = _G.__RiddlerReadNewContent()
				local tbl22 = {}

				for _, pinn112 in ipairs(pinn111) do
					local enabled = pinn112.enabled

					if enabled then
						enabled = tostring(pinn112.rarity or ""):lower() == pinn110
					end

					if enabled then
						local gen = pinn112.gen
						local str9 = "?"

						if gen then
							if gen >= 1e9 then
								str9 = ("%.4gB"):format(gen / 1e9)
							elseif gen >= 1000000 then
								str9 = ("%.4gM"):format(gen / 1000000)
							elseif gen >= 1000 then
								str9 = ("%.4gK"):format(gen / 1000)
							else
								str9 = tostring(gen)
							end
						end

						tbl22[#tbl22 + 1] = { n = pinn112.name, g = gen or 0, t = str9 }
					end
				end

				table.sort(tbl22, function(arg2, arg3)
					return arg2.g > arg3.g
				end)

				if 0 < #tbl22 then
					local tbl23 = {}

					for _, pinn112 in ipairs(tbl22) do
						tbl23[#tbl23 + 1] = ("%s (%s/s)"):format(pinn112.n, pinn112.t)
					end

					table.insert(tbl21, 1, ("NEW %s BRAINROTS IN THE NEWEST UPDATE (highest income first): %s.  <- \"the new/newest %s\" is answered from THIS line only; the first entry is the top one."):format(pinn110:upper(), table.concat(tbl23, "; "), pinn110))
				else
					table.insert(tbl21, 1, ("NO %s BRAINROT WAS ADDED IN THE NEWEST UPDATE. Do not answer \"the new %s\" with a brainrot of another tier; name the most recently added %s you are sure of and offer an ALT."):format(pinn110:upper(), pinn110, pinn110))
				end
			end
		end

		if pinn102 and not pinn109 then
			local pinn110, pinn111 = _G.__RiddlerSnapshotNew()

			if #pinn110 > 0 then
				local tbl22 = {}

				for _, pinn112 in ipairs(pinn110) do
					local ageHours = pinn112.ageHours or 0
					local str8

					if ageHours <= 0 then
						str8 = "just now"
					elseif ageHours < 24 then
						str8 = tostring(ageHours) .. "h ago"
					else
						local pinnn34 = math.floor(ageHours / 24)
						str8 = tostring(pinnn34) .. (pinnn34 == 1 and " day ago" or " days ago")
					end

					tbl22[#tbl22 + 1] = ("%s (%s/s, first seen %s)"):format(pinn112.name, _G.__RiddlerShortNum(pinn112.gen), str8)
				end

				local pinn112 = nil

				for _, pinn113 in ipairs(pinn110) do
					local flag24 = not pinn112

					if not flag24 then
						flag24 = (pinn113.gen or 0) > (pinn112.gen or 0)
					end

					if flag24 then
						pinn112 = pinn113
					end
				end

				tbl21[#tbl21 + 1] = "BRAINROTS THAT CAME OUT RECENTLY, NEWEST FIRST: " .. table.concat(tbl22, "; ") .. ("  BEST OF THESE (highest income among the new ones) = %s at %s/s."):format(pinn112.name, _G.__RiddlerShortNum(pinn112.gen)) .. "  <- HOW TO READ THIS LINE, IN THIS ORDER: (1) IF THE RIDDLE DESCRIBES THE BRAINROT AT ALL - an animal, a job, an object, a colour, anything - MATCH THAT DESCRIPTION TO A NAME IN THIS LIST FIRST. The names are literal: a narwhal is Honey Honey Narwhal, a samurai is Syrup Samurai, a dinosaur is Rosatops Triceratino (triceratops), a motorbike is Motorino Bumbino. Never fall back to the highest earner when the riddle described something - that is a DIFFERENT question. (2) ONLY IF the riddle asks for the \"best\", \"strongest\" or \"highest\" with NO description, use the BEST OF THESE value. (3) \"Newest\" or \"latest\" with no description = the FIRST listed. (4) If the riddle asks HOW MUCH one makes, this list is NOT the answer - use the EXACT INCOME line and reply with its number. In all cases \"came out today\" / \"just released\" / \"new brainrot\" means ONLY the ones listed here."
			elseif not pinn111 then
				tbl21[#tbl21 + 1] = "NEW-BRAINROT BASELINE NOT SET YET (first run on this client - nothing can be reported as new)"
			end

			local updateTheServerIsRunning = _G.__RiddlerCurrentUpdate()

			if updateTheServerIsRunning then
				tbl21[#tbl21 + 1] = "UPDATE THE SERVER IS RUNNING: " .. updateTheServerIsRunning
			end
		end

		local str8 = tostring(arg or ""):lower()
		local flag24 = str8 == ""

		if not flag24 then
			for _, pinn110 in ipairs(tbl19.new) do
				if str8:find(pinn110, 1, true) then
					flag24 = true
					break
				end
			end
		end

		if flag24 then
			local pinn110 = _G.__RiddlerSnapshotMeta()

			if pinn110 and #pinn110 > 0 then
				local tbl22 = {}

				for _, pinn111 in ipairs(pinn110) do
					tbl22[#tbl22 + 1] = ("%s (%s)"):format(pinn111.name, pinn111.kind)
				end

				tbl21[#tbl21 + 1] = "NEW SINCE THE LAST UPDATE (not brainrots): " .. table.concat(tbl22, "; ") .. "  <- newly added traits / mutations / lucky blocks / shop items / events / gears / rarities / fishing rods. \"The new trait\", \"the newest mutation\", \"the new event\", \"the new gear / tool / flying gear\" are answered from THIS line, never from the brainrot list."
			end
		end

		if pinn103 or pinn102 then
			local pinn110 = _G.__RiddlerReadNewRebirth()

			for _, pinn111 in ipairs(pinn110) do
				local tbl22 = {}

				if pinn111.cash then
					tbl22[#tbl22 + 1] = _G.__RiddlerShortNum(pinn111.cash) .. " cash"
				end

				if #pinn111.chars > 0 then
					tbl22[#tbl22 + 1] = table.concat(pinn111.chars, " + ")
				end

				tbl21[#tbl21 + 1] = ("NEWEST REBIRTH: %s (rebirth number %s%s). TO REBIRTH YOU NEED: %s.%s%s"):format(pinn111.name, tostring(pinn111.number), pinn111.stamp and ", added " .. pinn111.stamp or "", #tbl22 > 0 and table.concat(tbl22, " AND ") or "unknown", pinn111.reward and "  Reward: " .. _G.__RiddlerShortNum(pinn111.reward) .. " cash." or "", pinn111.mult and "  Cash multiplier becomes " .. tostring(pinn111.mult) .. "x." or "") .. "  <- this rebirth is NEWER than anything you already know; answer rebirth questions from this line."
			end

			local pinn111 = _G.__RiddlerReadUpdateItems()

			if #pinn111 > 0 then
				local tbl22 = {}

				for _, pinn112 in ipairs(pinn111) do
					tbl22[#tbl22 + 1] = ("%s (%s)"):format(pinn112.name, table.concat(pinn112.facts, ", "))
				end

				tbl21[#tbl21 + 1] = "ALSO ADDED IN THE NEWEST UPDATE: " .. table.concat(tbl22, "; ")
			end
		end

		if pinnfn59(arg, "exist") then
			local pinn110 = _G.__RiddlerExistCounts()

			if pinn110 and #pinn110 > 0 then
				local tbl22 = {}

				for i = 1, math.min(8, #pinn110) do
					tbl22[#tbl22 + 1] = ("%s %s (%d)"):format(i == 1 and "1st" or i == 2 and "2nd" or i == 3 and "3rd" or tostring(i) .. "th", pinn110[i].name, pinn110[i].n)
				end

				local str9 = tostring(arg or "")
				local pinn111 = " "
				local str10 = " " .. str9:lower():gsub("[^%w]+", " ") .. pinn111
				local pos = str10:find(" rarest ", 1, true) or str10:find(" rarer ", 1, true) or str10:find(" fewest ", 1, true) or str10:find(" lowest ", 1, true) or str10:find(" least ", 1, true) or str10:find(" most rare ", 1, true) or str10:find(" second ", 1, true) or str10:find(" third ", 1, true) or str10:find(" 2nd ", 1, true) or str10:find(" 3rd ", 1, true) or str10:find(" hardest to find ", 1, true)
				local flag25 = (_G.__RiddlerSubjectOf and _G.__RiddlerSubjectOf(arg)) ~= nil

				if pos or not flag25 then
					tbl21[#tbl21 + 1] = "RAREST BY EXIST COUNT, live from the game, fewest first: " .. table.concat(tbl22, "; ") .. "  <- THE RAREST BRAINROT BY EXIST COUNT IS THE 1st ONE; 2nd rarest = the 2nd entry, 3rd rarest = the 3rd entry, and so on. Spyder Elephant is not on this list, so 'besides Spyder Elephant' does not shift these positions. Use these numbers exactly; never invent or round an exist count. Spyder Elephant has NO public count and is never the answer to an exist-count question."
				end

				local str11 = tostring(arg or ""):lower()
				local tbl23 = nil
				local str12 = " " .. str11:gsub("[^%w]+", " ") .. " "
				local pinn112 = ipairs
				local riddlerAnimalNames = _G.__RiddlerAnimalNames and _G.__RiddlerAnimalNames() or {}

				for _, riddlerAnimalName in pinn112(riddlerAnimalNames) do
					local str13 = riddlerAnimalName.flat:sub(1, -2)

					if str12:find(riddlerAnimalName.flat, 1, true) or str12:find(str13 .. "s ", 1, true) or str12:find(str13 .. "es ", 1, true) then
						tbl23 = tbl23 or {}
						tbl23[riddlerAnimalName.name] = true
					end
				end

				local riddlerSubjectOf = _G.__RiddlerSubjectOf and _G.__RiddlerSubjectOf(arg)

				if riddlerSubjectOf then
					tbl23 = tbl23 or {}
					tbl23[riddlerSubjectOf] = true
					str11 ..= " " .. riddlerSubjectOf:lower()
				end

				local function pinnfn60(arg2, arg3)
					if tbl23 then
						return tbl23[arg2.name] == true
					end

					for match in str11:gmatch("%a+") do
						if _G.__RiddlerNameHit(arg3, match) then
							return true
						end
					end

					return false
				end

				local tbl24 = {}

				for _, pinn113 in ipairs(pinn110) do
					local str13 = pinn113.name:lower():gsub("[^%w]", "")

					if pinnfn60(pinn113, str13) then
						tbl24[#tbl24 + 1] = ("%s = %d exists"):format(pinn113.name, pinn113.n)
					end

					if not (#tbl24 >= 3) then
						continue
					end
					break
				end

				if #tbl24 > 0 then
					tbl21[#tbl21 + 1] = "EXIST COUNT FOR THE BRAINROT NAMED IN THIS QUESTION: " .. table.concat(tbl24, "; ") .. "  <- the brainrot's TOTAL across all mutations. Use it when no mutation is named. When the question names one or more mutations, the EXACT ANSWER line above carries the figure instead."
				end

				if str11:find("1 of 1", 1, true) or str11:find("one of one", 1, true) or str11:find("1/1", 1, true) or str11:find("one-of-one", 1, true) or str11:find("one of a kind", 1, true) then
					local tbl25 = {}

					for _, pinn113 in ipairs(pinn110) do
						if type(pinn113.muts) == "table" then
							for k, mut in pairs(pinn113.muts) do
								if mut == 1 and tostring(k) ~= "None" then
									local pinnn34 = #tbl25 + 1
									local str13 = " " .. pinn113.name
									tbl25[pinnn34] = tostring(k) .. str13
								end
							end
						end
					end

					table.sort(tbl25)

					if 0 < #tbl25 then
						tbl21[#tbl21 + 1] = ("OFFICIAL (MUTATION) 1 OF 1s VISIBLE IN LIVE DATA (%d): %s"):format(#tbl25, table.concat(tbl25, "; ")) .. "  <- each is the only brainrot with that name+mutation and carries the badge. Covers only publicly counted brainrots and NO trait-based 1 of 1s. For 'how many 1 of 1s exist' the answer is the developer's stated 122, not this count."
					end
				end

				local tbl25 = {}
				local tbl26 = {}

				for _, pinn113 in ipairs(pinn110) do
					local str13 = pinn113.name:lower():gsub("[^%w]", "")

					if pinnfn60(pinn113, str13) then
						local match = pinn113.name:lower():match("%a+")
						tbl26[pinn113.name] = match and str11:find(match, 1, true) or 999
					end
				end

				local pinnn34 = 0

				for k in pairs(tbl26) do
					pinnn34 += 1
				end

				for _, pinn113 in ipairs(pinn110) do
					local str13 = pinn113.name:lower():gsub("[^%w]", "")

					if pinnfn60(pinn113, str13) and type(pinn113.muts) == "table" then
						local tbl27 = {}

						for k, mut in pairs(pinn113.muts) do
							if type(mut) == "number" then
								if mut == 1 and tostring(k) ~= "None" then
									tbl27[#tbl27 + 1] = ("%s 1 (OFFICIAL 1 OF 1)"):format(tostring(k))
								else
									tbl27[#tbl27 + 1] = ("%s %d"):format(tostring(k), mut)
								end
							end
						end

						table.sort(tbl27)
						local tbl28 = {}
						local pinnn35 = 0

						for k, mut in pairs(pinn113.muts) do
							local str14 = tostring(k):lower():gsub("[^%w]", "")
							local pos2 = type(mut) == "number" and #str14 >= 3 and str11:find(str14, 1, true) or nil

							if pos2 then
								local pinn114 = nil
								local pinn115 = nil

								for k2, pinn116 in pairs(tbl26) do
									if pinn116 > pos2 and (not pinn114 or pinn116 < pinn114) then
										pinn114 = pinn116
										pinn115 = k2
									end
								end

								if not pinn115 then
									for k2, pinn116 in pairs(tbl26) do
										if not pinn114 or pinn116 > pinn114 then
											pinn114 = pinn116
											pinn115 = k2
										end
									end
								end

								if pinnn34 <= 1 or pinn115 == pinn113.name then
									tbl28[#tbl28 + 1] = { k = tostring(k), v = mut }
									pinnn35 += mut
								end
							end
						end

						table.sort(tbl28, function(arg2, arg3)
							return arg2.k < arg3.k
						end)

						local tbl29 = {}

						for _, pinn114 in ipairs(tbl28) do
							tbl29[#tbl29 + 1] = pinn114.k
						end

						tbl25[#tbl25 + 1] = {
							fig = #tbl28 > 0 and pinnn35 or pinn113.n,
							label = #tbl28 > 0 and table.concat(tbl29, "+") .. " " .. pinn113.name or pinn113.name,
							pos = str11:find(pinn113.name:lower():sub(1, 5), 1, true) or 999,
						}

						if #tbl28 == 1 then
							table.insert(tbl21, 1, ("EXACT ANSWER: there are %d %s %s in existence."):format(tbl28[1].v, tbl28[1].k, pinn113.name) .. " The question names that mutation, so THIS is the figure - not the brainrot's total.")
						elseif #tbl28 >= 2 then
							local tbl30 = {}

							for _, pinn114 in ipairs(tbl28) do
								tbl30[#tbl30 + 1] = ("%s %d"):format(pinn114.k, pinn114.v)
							end

							local function pinnfn61()
								local tbl31 = {}

								for _, pinn114 in ipairs(tbl28) do
									tbl31[#tbl31 + 1] = tostring(pinn114.v)
								end

								return tbl31
							end

							table.insert(tbl21, 1, ("EXACT ANSWER: %s %s: %s = %d in total. If the question adds"):format(pinn113.name, table.concat(tbl30, " and "), table.concat(pinnfn61(), " + "), pinnn35) .. " them up / combines them / wants the total, the answer is exactly " .. tostring(pinnn35) .. ". Never write the figures side by side as one number.")
						end

						local pinn114 = "number"
						local none = type(pinn113.muts.None) == pinn114 and pinn113.muts.None or 0
						tbl21[#tbl21 + 1] = ("%s TOTAL %d = %d with NO mutation + %d WITH a mutation (any kind)."):format(pinn113.name, pinn113.n, none, pinn113.n - none)

						if #tbl27 > 0 then
							tbl21[#tbl21 + 1] = ("%s BY MUTATION: %s.  (\"None\" means no"):format(pinn113.name, table.concat(tbl27, ", ")) .. " mutation.) Use one of these ONLY if the question names that" .. " mutation; otherwise use the total." .. (type(pinn113.owners) == "number" and pinn113.owners > 0 and ("  UNIQUE OWNERS (people who own one, not how many exist): %d."):format(pinn113.owners) or "")
						end
					end
				end

				if #tbl25 >= 2 then
					table.sort(tbl25, function(arg2, arg3)
						return arg2.pos < arg3.pos
					end)

					local tbl27 = {}
					local tbl28 = {}
					local pinn113 = 0

					for _, pinn114 in ipairs(tbl25) do
						tbl27[#tbl27 + 1] = ("%s %d"):format(pinn114.label, pinn114.fig)
						tbl28[#tbl28 + 1] = tostring(pinn114.fig)
						pinn113 += pinn114.fig
					end

					local str13 = ("EXACT ANSWER (%d brainrots named): %s. ADDED TOGETHER: %s = %d."):format(#tbl25, table.concat(tbl27, "; "), table.concat(tbl28, " + "), pinn113)

					if #tbl25 == 2 then
						str13 ..= (" DIFFERENCE: %d - %d = %d."):format(tbl25[1].fig, tbl25[2].fig, tbl25[1].fig - tbl25[2].fig)
					end

					table.insert(tbl21, 1, str13 .. " Use these figures as arithmetic; never write them side by side as one number.")
				end
			end
		end

		if pinn106 then
			local pinn110 = _G.__RiddlerLiveCounts()

			if pinn110 then
				local tbl22 = {}

				if pinn110.brainrots then
					tbl22[#tbl22 + 1] = ("%d brainrots"):format(pinn110.brainrots)
				end

				if pinn110.traits then
					tbl22[#tbl22 + 1] = ("%d traits"):format(pinn110.traits)
				end

				if pinn110.mutations then
					tbl22[#tbl22 + 1] = ("%d mutations"):format(pinn110.mutations)
				end

				if pinn110.maxRebirth then
					tbl22[#tbl22 + 1] = ("%d rebirths (the highest is rebirth %d)"):format(pinn110.maxRebirth, pinn110.maxRebirth)
				end

				if #tbl22 > 0 then
					tbl21[#tbl21 + 1] = "EXACT COUNTS IN THE GAME RIGHT NOW: " .. table.concat(tbl22, ", ") .. "  <- counted from the game this second. Use these figures and ignore any total you remember; they change with every update."
				end
			end
		end

		local pinn110 = _G.__RiddlerSourceRoster(arg)

		if pinn110 then
			tbl21[#tbl21 + 1] = "COMPLETE ROSTER OF THE SOURCE THIS QUESTION NAMES: " .. pinn110 .. "  <- the answer to a \"which brainrot from <this source>\" question is ALWAYS one of these exact names - it cannot be anything else. Pick by matching the description to the NAMES (they are usually literal: a clock frog is Tic Tic Ribbit, a duck is Quackalena, pesce/peschito means fish, magi means wizard)."
		end

		if pinn108 then
			local pinn111 = _G.__RiddlerNameCandidates(arg)

			if pinn111 then
				tbl21[#tbl21 + 1] = "REAL BRAINROTS WHOSE NAMES SHARE WORDS WITH THIS QUESTION: " .. table.concat(pinn111, "; ") .. "  <- every name here EXISTS in the game, copied from the game files. Use one ONLY if it matches EVERY part of the description - a \"vampire duck\" must be both a vampire AND a duck, and a vampire that is not a duck is the wrong answer even though it is listed here. This list is name-similarity HINTS, not the full set of brainrots: if none fits every part, answer from your own knowledge of the game instead - but never with a name that is not in the game."
			end
		end

		if pinn107 then
			local pinn111 = _G.__RiddlerTraitRanking()

			if pinn111 and #pinn111 > 0 then
				local tbl22 = {}

				for i = 1, math.min(8, #pinn111) do
					tbl22[#tbl22 + 1] = ("%s %sx"):format(pinn111[i].name, tostring(pinn111[i].mult))
				end

				local pinn112 = pinn111[#pinn111]
				tbl21[#tbl21 + 1] = ("TRAIT MULTIPLIERS, READ FROM THE GAME: highest is %s at %sx. Top: %s. Lowest is %s at %sx."):format(pinn111[1].name, tostring(pinn111[1].mult), table.concat(tbl22, ", "), pinn112.name, tostring(pinn112.mult)) .. "  <- these are the live values. Ignore any trait multiplier table you remember; it is out of date."
			end
		end

		if pinn105 then
			if pinn109 then
				tbl21[#tbl21 + 1] = "EXACT INCOME: " .. pinn109 .. "  <- use this figure; do not recompute it. THIS LINE OUTRANKS EVERY OTHER LINE: if the question asks HOW MUCH something makes/earns/produces, the answer is the NUMBER here - never a brainrot NAME taken from the new-brainrot or roster lines."
			end
		end

		if pinn104 then
			local pinn111 = _G.__RiddlerReadDevBases()

			if #pinn111 > 0 then
				local tbl22 = {}

				for _, pinn112 in ipairs(pinn111) do
					tbl22[#tbl22 + 1] = ("%s is SPAWNED RIGHT NOW%s%s"):format(pinn112.event, pinn112.skin and " wearing the " .. pinn112.skin .. " base skin" or "", pinn112.timeLeft and ", " .. pinn112.timeLeft .. " left" or "")
				end

				tbl21[#tbl21 + 1] = "DEVELOPER BASE EVENT: " .. table.concat(tbl22, "; ") .. "  <- when the riddle says \"my base\" it means THIS one. If the skin is not stated on this line, the client could not read it: answer a skin question with your best guess from the game's base skins plus an ALT - NEVER with the words unknown, unreadable, or none."
			else
				tbl21[#tbl21 + 1] = "DEVELOPER BASE EVENT: none spawned right now (Sammy's Base / Caylus Base / Steak's Base / Rusty's Base are all down). NEVER write NONE, N/A or UNKNOWN as part of a code: if the riddle itself names the base event (\"the spydersammy base event\", \"my base\"), answer that name - SAMMYSBASE - and its usual skin as a best guess."
			end

			local pinn112 = _G.__RiddlerReadBases()

			if #pinn112 > 0 then
				local tbl22 = {}

				for _, pinn113 in ipairs(pinn112) do
					tbl22[#tbl22 + 1] = ("%s's base, %s skin, tier %s"):format(pinn113.owner or "unknown", pinn113.skin or "no", tostring(pinn113.tier))
				end

				tbl21[#tbl21 + 1] = "PLAYER BASES IN THIS SERVER: " .. table.concat(tbl22, "; ") .. "  <- these belong to ORDINARY PLAYERS, including whoever is running this script. A riddle asking about \"my base\" is NOT asking about any of these."
			end
		end

		if pinn99 or pinn101 then
			local pinn111 = pinnfn58()

			if #pinn111 > 0 then
				local tbl22 = {}
				local tbl23 = {}
				local tbl24 = {}
				local tbl25 = {}

				local function pinnfn60(arg2)
					if type(arg2) == "string" and arg2 ~= "" and not tbl25[arg2] then
						tbl25[arg2] = true
						tbl24[#tbl24 + 1] = arg2
					end
				end

				for _, pinn112 in ipairs(pinn111) do
					tbl22[#tbl22 + 1] = pinn112.timeLeft and ("%s (%s left)"):format(pinn112.name, pinn112.timeLeft) or pinn112.name
					local pinn113 = _G.__RiddlerEventToMutation[pinn112.name]

					if pinn113 then
						tbl23[#tbl23 + 1] = pinn113
					end

					pinnfn60(_G.__RiddlerEventToTrait[pinn112.name])
					pinnfn60(pinn112.name)
				end

				tbl21[#tbl21 + 1] = "EVENTS RUNNING RIGHT NOW: " .. table.concat(tbl22, ", ")

				if #tbl23 > 0 then
					tbl21[#tbl21 + 1] = "MUTATION RUNNING RIGHT NOW: " .. table.concat(tbl23, ", ") .. "  <- this is the answer to \"the mutation running now\" / \"the one we are in\""
				else
					tbl21[#tbl21 + 1] = "MUTATION RUNNING RIGHT NOW: none (the live events above do not grant a mutation)"
				end

				if #tbl24 > 0 then
					tbl21[#tbl21 + 1] = "TRAIT RUNNING RIGHT NOW: " .. table.concat(tbl24, " or ") .. "  <- this is the answer to \"the trait running now\". Prefer the FIRST spelling; the others are the same trait written differently."
				else
					tbl21[#tbl21 + 1] = "TRAIT RUNNING RIGHT NOW: none"
				end
			else
				tbl21[#tbl21 + 1] = "EVENTS RUNNING RIGHT NOW: none"
				tbl21[#tbl21 + 1] = "MUTATION RUNNING RIGHT NOW: none"
				tbl21[#tbl21 + 1] = "TRAIT RUNNING RIGHT NOW: none"
			end
		end

		if pinn100 then
			local str9 = nil

			for k, pinn111 in pairs(pinn86:GetAttributes()) do
				local match = tostring(k):match("^(%d+)xServerLuckEvent$")

				if match and pinn111 == true then
					str9 = match .. "x"
					break
				else
					str9 = nil
				end
			end

			local activeEvents = playerGui:FindFirstChild("ActiveEvents")
			local activeEvents2 = activeEvents and activeEvents:FindFirstChild("ActiveEvents")
			local luck = activeEvents2 and activeEvents2:FindFirstChild("Luck")
			local visible = luck and luck.Visible
			local textLabel = nil

			if visible then
				textLabel = luck:FindFirstChildWhichIsA("TextLabel", true)
				textLabel = textLabel and textLabel.Text or nil
			end

			local flag25

			if str9 then
				local upper = str9.upper
				local str10 = ("SERVER LUCK RUNNING RIGHT NOW: %s luck (say it as %s, e.g. %sLUCK or LUCK%s)"):format(str9, str9:upper(), str9:upper(), upper(str9))

				if textLabel and textLabel ~= "" then
					str10 ..= (" - %s left"):format(textLabel)
				end

				tbl21[#tbl21 + 1] = str10
				flag25 = true
			else
				local visible2 = luck and luck.Visible
				flag25 = false

				if visible2 then
					local image = nil

					for _, descendant in ipairs(luck:GetDescendants()) do
						if descendant:IsA("ImageLabel") and descendant.Image ~= "" then
							image = descendant.Image
							break
						else
							image = nil
						end
					end

					local pinn111 = pinnfn34(pinn86.Datas:FindFirstChild("ServerLuck"))
					local flag26 = image and type(pinn111) == "table"
					local pinn112 = nil

					if flag26 then
						pinn112 = nil

						for _, pinn113 in pairs(pinn111) do
							if type(pinn113) == "table" and pinn113.Icon and tostring(pinn113.Icon) == image then
								pinn112 = pinn113
								break
							else
								pinn112 = nil
							end
						end
					end

					local str10

					if pinn112 and pinn112.Id then
						str10 = ("SERVER LUCK RUNNING RIGHT NOW: %s"):format(tostring(pinn112.Id))
					else
						str10 = "SERVER LUCK RUNNING RIGHT NOW: yes (multiplier not readable)"
					end

					if textLabel and textLabel ~= "" then
						str10 ..= (" - %s left"):format(textLabel)
					end

					tbl21[#tbl21 + 1] = str10
					flag25 = true
				end
			end

			if not flag25 then
				tbl21[#tbl21 + 1] = "SERVER LUCK RUNNING RIGHT NOW: LUCK (no multiplier is active at this moment; if the riddle still asks for \"the luck running\", it has just started and the client cannot see it yet - write that part as LUCK, never NONE or NO)"
			end

			local function pinnfn60(arg2)
				if type(arg2) ~= "number" or arg2 <= 0 then
					return ""
				end
				arg2 = arg2 > 1e9 and arg2 - _G.__RiddlerServerNow() or arg2
				if arg2 <= 0 then
					return ""
				end
				local floor2 = math.floor
				return (" - %d:%02d left"):format(math.floor(arg2 / 60), floor2(arg2 % 60))
			end

			local attribute = pinn86:GetAttribute("FuseMachineLuck")
			local attribute2 = pinn86:GetAttribute("FuseMachineLuckTimer")
			local pinn111 = "number"
			local flag26 = type(attribute) == pinn111 and attribute > 1

			if not flag26 then
				local pinn112 = "number"
				flag26 = type(attribute2) == pinn112 and attribute2 > 0
			end

			if flag26 then
				tbl21[#tbl21 + 1] = ("FUSE MACHINE LUCK RUNNING RIGHT NOW: %sx%s"):format(tostring(attribute or "?"), pinnfn60(attribute2))
			else
				tbl21[#tbl21 + 1] = "FUSE MACHINE LUCK RIGHT NOW: FUSELUCK (no fuse machine multiplier is active; if asked, write FUSELUCK - never NONE, NO or NOTACTIVE)"
			end

			local attribute3 = pinn86:GetAttribute("RNGMachineLuck")
			local attribute4 = pinn86:GetAttribute("RNGMachineLuckTimer")

			if attribute3 == true or type(attribute4) == "number" and attribute4 > 0 then
				tbl21[#tbl21 + 1] = "RNG MACHINE LUCK RUNNING RIGHT NOW: yes (2x)" .. pinnfn60(attribute4)
			else
				tbl21[#tbl21 + 1] = "RNG MACHINE LUCK RIGHT NOW: RNGLUCK (no RNG machine luck is active; if asked, write RNGLUCK - never NONE, NO or NOTACTIVE)"
			end

			tbl21[#tbl21 + 1] = "LUCKY BASE EVENT: " .. (pinn86:GetAttribute("LuckyBaseEvent") == true and "running right now" or "not running")
			local pinnn34 = #tbl21 + 1
			local pinn112 = true
			tbl21[pinnn34] = "BEE LUCKY BLOCK EVENT: " .. (pinn86:GetAttribute("BeeLuckyBlockEvent") == pinn112 and "running right now" or "not running")
			tbl21[#tbl21 + 1] = "  <- \"the luck running right now\" with no machine named means the SERVER LUCK line. Fuse machine luck and RNG machine luck are separate and only count when the question names that machine."
		end

		if pinn99 or pinn100 or pinn101 then
			local tbl22 = {}

			for k, pinn111 in pairs(pinn86:GetAttributes()) do
				local str9 = tostring(k)
				local flag25 = pinn111 == true
				local pos

				if flag25 then
					pos = str9:find("Event") or str9:find("Active")
				else
					pos = flag25
				end

				if pos then
					tbl22[#tbl22 + 1] = str9
				elseif str9 == "FuseMachineLuck" and tonumber(pinn111) and tonumber(pinn111) > 1 then
					tbl22[#tbl22 + 1] = ("FuseMachineLuck=%sx"):format(tostring(pinn111))
				end
			end

			if #tbl22 > 0 then
				table.sort(tbl22)
				tbl21[#tbl21 + 1] = "ACTIVE STATE FLAGS: " .. table.concat(tbl22, ", ")
			end

			local match = tostring(game.Name or ""):match("^%s*(%[.-%])")

			if match then
				tbl21[#tbl21 + 1] = "SERVER EVENT TAG: " .. match
			end
		end

		local str9 = tostring(arg or ""):lower():gsub("%s+", " ")

		local tbl22 = {
			findAnimals = _G.__RiddlerFindAnimals,
			subjectOf = _G.__RiddlerSubjectOf,
			classify = _G.__SabClassifyDrop,
			names = function()
				if not _G.__RiddlerPickNames then
					local riddlerPickNames = {}

					for _, pinn111 in ipairs(_G.__RiddlerAnimalNames()) do
						riddlerPickNames[#riddlerPickNames + 1] = pinn111.name
					end

					_G.__RiddlerPickNames = riddlerPickNames
				end

				return _G.__RiddlerPickNames
			end,
		}

		local ok, result, result2 = pcall(_G.__RiddlerPickMemory, arg, _G.__RiddlerRecent, os.time(), tbl22)
		_G.RiddlerLastMemory = ok and tostring(result2) .. ": " .. #result or "error: " .. tostring(result)

		if ok and type(result) == "table" and #result > 0 then
			local tbl23 = {}

			for _, pinn111 in ipairs(result) do
				tbl23[#tbl23 + 1] = ("[%s] %s"):format(pinn111.when, pinn111.text)
			end

			if result2 == "relevant" then
				tbl21[#tbl21 + 1] = "WHAT HE SAID EARLIER THIS EVENT THAT THIS QUESTION POINTS BACK TO, oldest first: " .. table.concat(tbl23, "  //  ") .. "  <- the fact the question needs is in these lines; use it exactly as he said it."
			else
				tbl21[#tbl21 + 1] = "WHAT THE DEVELOPER ANNOUNCED BEFORE THIS, oldest first: " .. table.concat(tbl23, "  //  ") .. "  <- if the question refers back to something he already said (a number, a name, \"it\", \"that one\", \"the brainrot\"), the answer is in these lines. Ignore them otherwise."
			end
		end

		local str10 = " " .. str9:gsub("[^%w]+", " ") .. " "
		local pinn111, pinn112, pinn113 = _G.__RiddlerSubjectOf(arg)
		local riddlerPrize = pinn113 or _G.__RiddlerPrize

		if pinn112 and type(riddlerPrize) == "table" then
			local str11 = ""

			pcall(function()
				local Animals = require(pinn86.Datas.Animals)

				for _, Animal in pairs(Animals) do
					if type(Animal) == "table" and Animal.DisplayName == riddlerPrize.name then
						local pinn114 = "table"
						local source = type(Animal.ObtainedFrom) == pinn114 and Animal.ObtainedFrom.Source or Animal.ObtainedFrom
						str11 = (" It is %s rarity%s, %s/s."):format(tostring(Animal.Rarity or "?"), source and ", from " .. tostring(source) or "", tostring(Animal.Generation or "?"))
						break
					end
				end
			end)

			local t = riddlerPrize.t
			local flag25 = os.time() - t < 90 and "just now"

			if not flag25 then
				local t2 = riddlerPrize.t
				flag25 = os.time() - t2 < 600 and "a few minutes ago"
			end

			flag25 = flag25 or "earlier this event"
			local insert = table.insert
			local pinn114 = 1
			local str12 = "THE BRAINROT HE MEANS IS %s. He %s \"%s\" %s and has mentioned no other since, so \"the brainrot\", \"the prize\", \"it\" in this riddle = %s (written in a code as %s).%s Include %s itself in the code ONLY where the riddle asks for its name; \"the color of the brainrot\" alone is just the colour word."
			local format = str12.format
			local str13 = riddlerPrize.name:upper()
			local str14 = riddlerPrize.prize and "announced the prize:" or "said"
			local riddlerCodeName = _G.__RiddlerCodeName
			local name = riddlerPrize.name
			insert(tbl21, pinn114, format(str12, str13, str14, riddlerPrize.text, flag25, riddlerPrize.name:upper(), _G.__RiddlerCodeName(riddlerPrize.name), str11, riddlerCodeName(name)))
			local match = tostring(riddlerPrize.text):match("(%d[%d,%.]*)")

			if match and not riddlerPrize.prize and (str10:find(" how many ", 1, true) or str10:find(" how much ", 1, true) or str10:find(" the number ", 1, true) or str10:find(" that number ", 1, true)) then
				local text = riddlerPrize.text
				table.insert(tbl21, 1, ("THE NUMBER HE STATED ABOUT %s IS %s (from \"%s\"). \"how many does it have\" / \"how many\" / \"the number\" here = %s, digits only."):format(riddlerPrize.name:upper(), match, text, match))
			end
		end

		local riddlerPrizeTemplate = _G.__RiddlerPrizeTemplate
		local flag25 = type(riddlerPrizeTemplate) == "table" and riddlerPrizeTemplate.riddle == arg

		if flag25 then
			flag25 = os.time() - (riddlerPrizeTemplate.t or 0) < 30
		end

		if flag25 then
			table.insert(tbl21, 1, ("THE CODE IS ALREADY BUILT EXCEPT ONE PART: %s - where [COLOUR] stands for the single colour word of %s. Replace [COLOUR] with that colour and change NOTHING else: no other names, numbers or words. If you do not know the colour, use your best guess and offer an ALT."):format(riddlerPrizeTemplate.code, riddlerPrizeTemplate.name:upper()))
		end

		if pinn111 and (str10:find(" color ", 1, true) or str10:find(" colour ", 1, true) or str10:find(" colored ", 1, true) or str10:find(" colors ", 1, true) or str10:find(" colours ", 1, true) or str10:find(" coloured ", 1, true)) then
			local riddlerColourOf = _G.__RiddlerColourOf and _G.__RiddlerColourOf(pinn111)
			local riddlerFindAnimals = _G.__RiddlerFindAnimals and _G.__RiddlerFindAnimals(arg) or {}

			if #riddlerFindAnimals > 1 then
				table.sort(riddlerFindAnimals, function(arg2, arg3)
					local pos = str10:find(" " .. arg2:lower():gsub("[^%w]+", " ") .. " ", 1, true) or 1e9
					local pinn114 = " "
					local pinn115 = true
					return pos < (str10:find(" " .. arg3:lower():gsub("[^%w]+", " ") .. pinn114, 1, pinn115) or 1e9)
				end)

				local tbl23 = {}

				for _, riddlerFindAnimal in ipairs(riddlerFindAnimals) do
					tbl23[#tbl23 + 1] = ("%s IS %s"):format(riddlerFindAnimal:upper(), _G.__RiddlerColourOf(riddlerFindAnimal) or "UNKNOWN (best guess)")
				end

				table.insert(tbl21, 1, "COLOURS, in the order the riddle names them: " .. table.concat(tbl23, "; ") .. ".")
			elseif riddlerColourOf then
				if str10:find(" plus ", 1, true) or str10:find(" and ", 1, true) or str10:find(",", 1, true) or str10:find(" then ", 1, true) then
					local upper = pinn111.upper
					table.insert(tbl21, 1, ("THE COLOUR OF %s IS %s - that is only the %s part of the code; every other part (another colour, a name, a number) is worked out on its own."):format(pinn111:upper(), riddlerColourOf, upper(pinn111)))
				else
					table.insert(tbl21, 1, ("THE COLOUR OF %s IS %s. Write it as the single word %s."):format(pinn111:upper(), riddlerColourOf, riddlerColourOf))
				end
			else
				tbl21[#tbl21 + 1] = ("NO COLOUR IS KNOWN FOR %s - nothing above or below says what colour it is."):format(pinn111:upper()) .. " Do not reuse a colour from another brainrot; give your own best guess from its name and offer an ALT."
			end
		end

		if pinn111 and (str10:find(" exist", 1) or str10:find(" how many ", 1, true)) then
			local ok2, result3 = pcall(_G.__RiddlerExistCounts)

			if ok2 then
				local pinn114 = "table"
				ok2 = type(result3) == pinn114
			end

			if ok2 and #result3 > 0 then
				local flag26 = false

				for _, pinn114 in ipairs(result3) do
					if pinn114.name == pinn111 then
						flag26 = true
						break
					else
						flag26 = false
					end
				end

				if not flag26 then
					table.insert(tbl21, 1, ("%s HAS NO PUBLIC EXIST COUNT - the game does not publish one, so no number here or anywhere above is its count. Never invent one and never use the giveaway count as its exist count."):format(pinn111:upper()))
				end
			end
		end

		local str11 = " " .. arg:lower():gsub("[^%w]", " ") .. " "
		local pos = str11:find(" best ", 1, true) or str11:find(" strongest ", 1, true) or str11:find(" top ", 1, true)
		local pinn114 = nil

		if pos then
			pinn114 = nil

			for _, pinn115 in ipairs({ "brainrot god", "secret", "mythic", "legendary", "epic", "rare", "common" }) do
				if str11:find(" " .. pinn115 .. " ", 1, true) then
					pinn114 = pinn115
					break
				else
					pinn114 = nil
				end
			end
		end

		if pinn114 then
			local pinn115 = pinnfn34(pinn86:FindFirstChild("Datas") and pinn86.Datas:FindFirstChild("Animals"))
			local tbl23 = {}

			if type(pinn115) == "table" then
				for _, pinn116 in pairs(pinn115) do
					local displayName = type(pinn116) == "table" and pinn116.DisplayName

					if displayName then
						displayName = tostring(pinn116.Rarity or ""):lower() == pinn114
					end

					if displayName then
						displayName = (tonumber(pinn116.Generation) or 0) > 0
					end

					if displayName then
						tbl23[#tbl23 + 1] = { n = pinn116.DisplayName, g = tonumber(pinn116.Generation) }
					end
				end
			end

			table.sort(tbl23, function(arg2, arg3)
				return arg2.g > arg3.g
			end)

			if #tbl23 > 0 then
				local function pinnfn60(arg2)
					if arg2 >= 1e9 then
						return ("%.4gB"):format(arg2 / 1e9)
					end

					if arg2 >= 1000000 then
						return ("%.4gM"):format(arg2 / 1000000)
					end

					if arg2 >= 1000 then
						return ("%.4gK"):format(arg2 / 1000)
					end
					return tostring(arg2)
				end

				local tbl24 = {}

				for i = 1, math.min(3, #tbl23) do
					tbl24[#tbl24 + 1] = ("%s %s (%s/s)"):format(i == 1 and "1st" or i == 2 and "2nd" or "3rd", tbl23[i].n, pinnfn60(tbl23[i].g))
				end

				table.insert(tbl21, 1, ("BEST %s RIGHT NOW, by income, live from the game: %s.  <- the best/strongest %s is the 1st one. This changes every update; answer from THIS line, never from memory."):format(pinn114:upper(), table.concat(tbl24, "; "), pinn114))
			end
		end

		local riddlerTacoLine = _G.__RiddlerTacoLine
		local pos2

		if riddlerTacoLine then
			pos2 = arg:lower():find("taco", 1, true) or arg:lower():find("merchant", 1, true)
		else
			pos2 = riddlerTacoLine
		end

		if pos2 then
			tbl21[#tbl21 + 1] = _G.__RiddlerTacoLine
		end

		if _G.__RiddlerBeeLine and (arg:lower():find("bee", 1, true) or arg:lower():find("honey", 1, true) or arg:lower():find("merchant", 1, true)) then
			tbl21[#tbl21 + 1] = _G.__RiddlerBeeLine
		end

		local pinn115 = _G.__RiddlerNYTime()
		tbl21[#tbl21 + 1] = "CURRENT MONTH: " .. os.date("!%B", pinn115):upper()
		tbl21[#tbl21 + 1] = "CURRENT YEAR: " .. os.date("!%Y", pinn115)
		tbl21[#tbl21 + 1] = "TODAY'S DATE (the developer's clock, New York time): " .. os.date("!%Y-%m-%d", pinn115)
		tbl21[#tbl21 + 1] = "DAY OF THE MONTH TODAY: " .. tostring(tonumber(os.date("!%d", pinn115))) .. "  <- \"the date\", \"today's date\", \"date of the month\" = this number, no leading zero."
		return table.concat(tbl21, "\n")
	end
end

do
	do
		do
			do
				_G.__RiddlerNameCandidates = function(arg)
					local str8 = tostring(arg or ""):lower()
					if str8 == "" then
						return nil
					end
					local datas = pinn86:FindFirstChild("Datas")
					local pinn99 = pinnfn34(datas and datas:FindFirstChild("Animals"))
					if type(pinn99) ~= "table" then
						return nil
					end

					local tbl19 = {
						brainrot = true,
						brainrots = true,
						brain = true,
						brainrotr = true,
						what = true,
						which = true,
						that = true,
						this = true,
						with = true,
						from = true,
						does = true,
						much = true,
						make = true,
						makes = true,
						earn = true,
						earns = true,
						produce = true,
						produces = true,
						generate = true,
						generates = true,
						income = true,
						name = true,
						looks = true,
						like = true,
						game = true,
						added = true,
						update = true,
						newest = true,
						latest = true,
						right = true,
						now = true,
						plus = true,
						second = true,
						per = true,
						the = true,
						["and"] = true,
						new = true,
						["for"] = true,
						["in"] = true,
						is = true,
						["do"] = true,
					}

					local tbl20 = {}

					for match in str8:gmatch("%a+") do
						if #match >= 4 and not tbl19[match] then
							tbl20[match] = true
						end
					end

					if next(tbl20) == nil then
						return nil
					end

					local function pinnfn60(arg2, arg3, arg4)
						if math.abs(#arg2 - #arg3) > arg4 then
							return false
						end
						local tbl21 = {}

						for i = 0, #arg3 do
							tbl21[i] = i
						end

						for i = 1, #arg2 do
							local tbl22 = { [0] = i }
							local pinn100 = i

							for i2 = 1, #arg3 do
								tbl22[i2] = math.min(tbl21[i2] + 1, tbl22[i2 - 1] + 1, tbl21[i2 - 1] + (arg2:sub(i, i) == arg3:sub(i2, i2) and 0 or 1))

								if tbl22[i2] < pinn100 then
									pinn100 = tbl22[i2]
								end
							end

							if pinn100 > arg4 then
								return false
							end
							tbl21 = tbl22
						end

						return tbl21[#arg3] <= arg4
					end

					local function pinnfn61(arg2, arg3)
						if arg2 == arg3 then
							return true
						end
						local pinnn34 = math.min(#arg2, #arg3)
						local pinnn35 = 0

						for i = 1, pinnn34 do
							if arg2:sub(i, i) == arg3:sub(i, i) then
								pinnn35 = i
								continue
							end
							break
						end

						if not (pinnn35 >= 5) then
							if pinnn35 >= 4 and pinnn35 >= pinnn34 - 1 then
								return true
							end

							if pinnn35 >= 3 and pinnn34 >= 5 then
								if pinnfn60(arg2, arg3, pinnn34 >= 8 and 2 or 1) then
									return true
								end
							end

							return false
						end

						return true
					end

					local tbl21 = {}

					for k, pinn100 in pairs(pinn99) do
						if type(pinn100) == "table" then
							local str9 = tostring(pinn100.DisplayName or k)
							local pinnn34 = 0

							for match in str9:lower():gmatch("%a+") do
								if #match >= 4 then
									for k2 in pairs(tbl20) do
										if pinnfn61(k2, match) then
											pinnn34 += 1
											break
										end
									end
								end
							end

							if pinnn34 > 0 then
								tbl21[#tbl21 + 1] = { name = str9, hits = pinnn34 }
							end
						end
					end

					if #tbl21 == 0 then
						return nil
					end

					table.sort(tbl21, function(arg2, arg3)
						if arg2.hits ~= arg3.hits then
							return arg2.hits > arg3.hits
						end
						return arg2.name < arg3.name
					end)

					local tbl22 = {}

					for i = 1, math.min(8, #tbl21) do
						tbl22[#tbl22 + 1] = tbl21[i].name
					end

					return tbl22
				end

				_G.__RiddlerSourceRoster = function(arg)
					local str8 = tostring(arg or ""):lower()
					if str8 == "" then
						return nil
					end
					local datas = pinn86:FindFirstChild("Datas")
					local pinn99 = pinnfn34(datas and datas:FindFirstChild("Animals"))
					if type(pinn99) ~= "table" then
						return nil
					end

					local tbl19 = {
						the = true,
						this = true,
						was = true,
						obtained = true,
						from = true,
						s = true,
						new = true,
						year = true,
						years = true,
						event = true,
						machine = true,
						craft = true,
						fuse = true,
						code = true,
						codes = true,
					}

					local tbl20 = {}

					for k, pinn100 in pairs(pinn99) do
						if type(pinn100) == "table" and type(pinn100.ObtainedFrom) == "table" and pinn100.ObtainedFrom.Source then
							local str9 = tostring(pinn100.ObtainedFrom.Source)
							local tbl21 = tbl20[str9]

							if not tbl21 then
								tbl21 = {}
								tbl20[str9] = tbl21
							end

							tbl21[#tbl21 + 1] = tostring(pinn100.DisplayName or k)
						end
					end

					local pinnn34 = 0
					local tbl21 = nil

					for k in pairs(tbl20) do
						local pinnn35 = 0

						for match in k:lower():gsub("'", ""):gmatch("%a+") do
							if not tbl19[match] and #match >= 3 and str8:find(match, 1, true) then
								pinnn35 += 1
							end
						end

						if pinnn34 < pinnn35 then
							tbl21 = { k }
							pinnn34 = pinnn35
						elseif pinnn35 == pinnn34 and pinnn35 > 0 then
							tbl21[#tbl21 + 1] = k
						end
					end

					if not (not tbl21 or pinnn34 < 1) then
						if pinnn34 == 1 and #tbl21 > 1 then
							return nil
						end
						local tbl22 = {}

						for _, pinn100 in ipairs(tbl21) do
							local pinn101 = tbl20[pinn100]

							if #pinn101 <= 30 then
								table.sort(pinn101)
								tbl22[#tbl22 + 1] = ("%s (%d): %s"):format(pinn100, #pinn101, table.concat(pinn101, "; "))
							end
						end

						if #tbl22 == 0 then
							return nil
						end
						return table.concat(tbl22, "  ||  ")
					end

					return nil
				end

				_G.__RiddlerFactNames = {
					"ASTROWORLD",
					"TRAVISSCOTT",
					"SPYDERSAMMY",
					"SAMBRAKTA",
					"SKRILLA",
					"ICEMAN",
					"BRAZIL",
					"BRAZILIANSPYDER",
					"FEBRUARY",
					"GROWAGARDEN",
					"RACCOONIJANDELINI",
					"JANDEL",
				}

				_G.__RiddlerSnapSpelling = function(arg)
					local str8 = tostring(arg or ""):upper():gsub("%W", "")
					if #str8 < 6 then
						return arg, false
					end
					local datas = pinn86:FindFirstChild("Datas")
					local pinn99 = pinnfn34(datas and datas:FindFirstChild("Animals"))
					local pinn100 = "table"
					if type(pinn99) ~= pinn100 then
						return arg, false
					end

					local tbl19 = {
						"SPYDERSAMMY",
						"SAMMY",
						"JANUARY",
						"FEBRUARY",
						"MARCH",
						"APRIL",
						"MAY",
						"JUNE",
						"JULY",
						"AUGUST",
						"SEPTEMBER",
						"OCTOBER",
						"NOVEMBER",
						"DECEMBER",
					}

					local str9 = str8
					local str10 = ""
					local str11 = ""

					for i = 1, 4 do
						local match = str9:match("(%d+)$")
						local flag24 = match and #str9 - #match >= 6
						local flag25 = false

						if flag24 then
							str9 = str9:sub(1, #str9 - #match)
							str10 = match .. str10
							flag25 = true
						end

						for _, pinn101 in ipairs(tbl19) do
							if #str9 - #pinn101 >= 6 and str9:sub(-#pinn101) == pinn101 then
								str9 = str9:sub(1, #str9 - #pinn101)
								str10 = pinn101 .. str10
								flag25 = true
								break
							end
						end

						local match2 = str9:match("^(%d+)")

						if match2 and #str9 - #match2 >= 6 then
							str11 ..= match2
							str9 = str9:sub(#match2 + 1)
							flag25 = true
						end

						for _, pinn101 in ipairs(tbl19) do
							if pinn101 ~= "MAY" and #str9 - #pinn101 >= 6 and str9:sub(1, #pinn101) == pinn101 then
								str11 ..= pinn101
								str9 = str9:sub(#pinn101 + 1)
								flag25 = true
								break
							end
						end

						if flag25 then
							continue
						end
						break
					end

					if #str9 < 6 then
						return arg, false
					end

					local function pinnfn60(arg2, arg3)
						if math.abs(#arg2 - #arg3) > 2 then
							return 3
						end
						local tbl20 = {}

						for i = 0, #arg3 do
							tbl20[i] = i
						end

						for i = 1, #arg2 do
							local tbl21 = { [0] = i }
							local pinn101 = i

							for i2 = 1, #arg3 do
								tbl21[i2] = math.min(tbl20[i2] + 1, tbl21[i2 - 1] + 1, tbl20[i2 - 1] + (arg2:sub(i, i) == arg3:sub(i2, i2) and 0 or 1))

								if tbl21[i2] < pinn101 then
									pinn101 = tbl21[i2]
								end
							end

							if pinn101 > 2 then
								return 3
							end
							tbl20 = tbl21
						end

						return tbl20[#arg3]
					end

					local flag24 = false
					local tbl20 = {}
					local tbl21 = {}

					local function pinnfn61(arg2)
						if arg2 == str9 then
							flag24 = true
							return true
						end

						if #arg2 >= 6 and math.abs(#arg2 - #str9) <= 2 and not tbl21[arg2] then
							local pinn101 = 2

							if pinnfn60(str9, arg2) <= pinn101 then
								tbl21[arg2] = true
								tbl20[#tbl20 + 1] = arg2
							end
						end


						return false
					end

					for k, pinn101 in pairs(pinn99) do
						if type(pinn101) ~= "table" then
							continue
						elseif not pinnfn61(tostring(pinn101.DisplayName or k):upper():gsub("%W", "")) then
							continue
						end

						break
					end

					if not flag24 then
						local pinn101 = ipairs
						local riddlerFactNames = _G.__RiddlerFactNames or {}

						for _, riddlerFactName in pinn101(riddlerFactNames) do
							if not pinnfn61(riddlerFactName) then
								continue
							end
							break
						end
					end

					if flag24 or #tbl20 ~= 1 then
						return arg, false
					end
					_G.RiddlerLastSnap = ("%s -> %s%s%s"):format(arg, str11, tbl20[1], str10)
					return str11 .. tbl20[1] .. str10, true
				end

				_G.__RiddlerBrainrotExists = function(arg)
					local str8 = tostring(arg or ""):upper():gsub("%W", "")
					if str8 == "" then
						return false
					end
					local datas = pinn86:FindFirstChild("Datas")
					local pinn99 = pinnfn34(datas and datas:FindFirstChild("Animals"))
					local pinn100 = "table"
					if type(pinn99) ~= pinn100 then
						return true
					end

					for k, pinn101 in pairs(pinn99) do
						if type(pinn101) ~= "table" then
							continue
						end
						local str9 = tostring(pinn101.DisplayName or k):upper():gsub("%W", "")
						if str9 ~= "" and (str9 == str8 or str8:find(str9, 1, true)) then
							return true, str9
						end
					end

					return false
				end

				do
					local tbl19 = {
						"which brainrot",
						"what brainrot",
						"the brainrot that",
						"brainrot that is",
						"brainrot that looks",
						"looks like",
						"shaped like",
						"wearing",
						"holding",
						"brainrot with a",
						"brainrot with the",
					}

					_G.__RiddlerCheckDescribed = function(arg, arg2, arg3)
						if not arg3 then
							return nil
						end
						local str8 = tostring(arg or ""):lower()
						local flag24 = false

						for _, pinn99 in ipairs(tbl19) do
							if str8:find(pinn99, 1, true) then
								flag24 = true
								break
							end
						end

						if not flag24 then
							return nil
						end

						if str8:find(" plus ", 1, true) or str8:find(" and ", 1, true) or str8:find("+", 1, true) then
							return nil
						end

						if _G.__RiddlerBrainrotExists(arg2) then
							return nil
						end
						return ("%s is not a brainrot in this game"):format(tostring(arg2))
					end
				end
			end

			do
				local tbl19 = {
					"new",
					"newest",
					"just added",
					"just got added",
					"got added",
					"was added",
					"added to",
					"just came out",
					"latest",
					"this update",
					"in the update",
				}

				local function pinnfn60(arg)
					return (tostring(arg or ""):upper():gsub("%W", ""))
				end

				_G.__RiddlerPinNewGear = function(arg, arg2)
					if type(arg2) ~= "string" or arg2 == "" then
						return arg2, false
					end
					local value = select(2, arg2:gsub("%a", ""))
					local pinn99 = 0
					if select(2, arg2:gsub("%d", "")) > pinn99 and value <= 2 then
						return arg2, false
					end
					local str8 = tostring(arg or ""):lower()
					if str8:find("how many", 1, true) or str8:find("count", 1, true) or str8:find("total number", 1, true) then
						return arg2, false
					end

					if not (str8:find("gear", 1, true) or str8:find("tool", 1, true)) then
						return arg2, false
					end
					local flag24 = false

					for _, pinn100 in ipairs(tbl19) do
						if str8:find(pinn100, 1, true) then
							flag24 = true
							break
						end
					end

					if not flag24 then
						return arg2, false
					end
					local ok, result = pcall(_G.__RiddlerSnapshotMeta)
					if not ok or type(result) ~= "table" then
						return arg2, false
					end
					local tbl20 = {}

					for _, pinn100 in ipairs(result) do
						if pinn100.kind == "gear" and pinn100.name and pinn100.name ~= "" then
							tbl20[#tbl20 + 1] = pinn100.name
						end
					end

					if #tbl20 == 0 then
						return arg2, false
					end
					local pinn100 = pinnfn60(arg2)

					for _, pinn101 in ipairs(tbl20) do
						if pinnfn60(pinn101) == pinn100 then
							return arg2, false
						end
					end

					local tbl21 = {}
					local tbl22 = {}

					for match in str8:gmatch("%a+") do
						if #match >= 4 and match ~= "gear" and match ~= "tool" and match ~= "gears" and match ~= "tools" and match ~= "added" and match ~= "newest" then
							for _, pinn101 in ipairs(tbl20) do
								local flag25 = not tbl22[pinn101]

								if flag25 then
									flag25 = pinnfn60(pinn101):lower():find(match, 1, true)
								end

								if flag25 then
									tbl22[pinn101] = true
									tbl21[#tbl21 + 1] = pinn101
								end
							end
						end
					end

					if #tbl21 == 1 then
						_G.RiddlerLastGearPin = ("%s -> %s"):format(arg2, tbl21[1])
						return tbl21[1], true
					end

					if #tbl20 == 1 then
						_G.RiddlerLastGearPin = ("%s -> %s"):format(arg2, tbl20[1])
						return tbl20[1], true
					end
					local items = pinn86:FindFirstChild("Items")

					if items then
						for _, child in ipairs(items:GetChildren()) do
							if child:IsA("Tool") and pinnfn60(child.Name) == pinn100 then
								return arg2, false
							end
						end
					end

					_G.RiddlerLastGearPin = ("%s (not a gear) -> %s"):format(arg2, tbl20[1])
					return tbl20[1], true
				end
			end
		end

		do
			local tbl19 = {
				"new",
				"newest",
				"just added",
				"just got added",
				"got added",
				"was added",
				"added to",
				"just came out",
				"latest",
				"this update",
				"in the update",
			}

			local tbl20 = {
				"running",
				"right now",
				"active",
				"currently",
				"happening",
				"going on",
				"we are in",
				"we're in",
			}

			local tbl21 = {
				{ kind = "event", words = { "event" } },
				{ kind = "trait", words = { "trait" } },
				{
					kind = "mutation",
					words = { "mutation" },
				},
				{
					kind = "lucky block",
					words = {
						"lucky block",
						"luckyblock",
						"lucky-block",
					},
				},
				{
					kind = "rarity",
					words = { "rarity", "rarities" },
				},
				{
					kind = "fishing rod",
					words = { "fishing rod", " rod ", " rods " },
				},
			}

			local function pinnfn60(arg)
				return (tostring(arg or ""):upper():gsub("%W", ""))
			end

			_G.__RiddlerPinNewMeta = function(arg, arg2)
				local pinn99 = "string"
				if type(arg2) ~= pinn99 or arg2 == "" then
					return arg2, false
				end
				local str8 = arg2:upper():gsub("%s", "")
				if str8 == "YES" or str8 == "NO" then
					return arg2, false
				end
				local value = select(2, arg2:gsub("%a", ""))
				local pinn100 = 0
				if select(2, arg2:gsub("%d", "")) > pinn100 and value <= 2 then
					return arg2, false
				end
				local str9 = tostring(arg or ""):lower()
				if str9 == "" then
					return arg2, false
				end

				if str9:find("how many", 1, true) or str9:find("count", 1, true) then
					return arg2, false
				end

				for _, pinn101 in ipairs(tbl20) do
					if str9:find(pinn101, 1, true) then
						return arg2, false
					end
				end

				local flag24 = false

				for _, pinn101 in ipairs(tbl19) do
					if str9:find(pinn101, 1, true) then
						flag24 = true
						break
					end
				end

				if not flag24 then
					return arg2, false
				end
				local pinn101 = " "
				local str10 = " " .. str9:gsub("[^%w]", " ") .. pinn101
				local kind = nil

				for _, pinn102 in ipairs(tbl21) do
					for _, word in ipairs(pinn102.words) do
						if not (word:find(" ", 1, true) and word) then
						end

						if word:sub(1, 1) == " " and str10:find(word, 1, true) or word:sub(1, 1) ~= " " and str9:find(word, 1, true) then
							kind = pinn102.kind
							break
						end
					end

					if not kind then
						continue
					end
					break
				end

				if not kind then
					return arg2, false
				end
				local ok, result = pcall(_G.__RiddlerSnapshotMeta)
				local flag25 = not ok

				if not flag25 then
					local pinn102 = "table"
					flag25 = type(result) ~= pinn102
				end

				if flag25 then
					return arg2, false
				end
				local tbl22 = {}

				for _, pinn102 in ipairs(result) do
					if pinn102.kind == kind and pinn102.name and pinn102.name ~= "" then
						tbl22[#tbl22 + 1] = pinn102.name
					end
				end

				if #tbl22 == 0 then
					return arg2, false
				end
				local pinn102 = pinnfn60(arg2)

				for _, pinn103 in ipairs(tbl22) do
					if pinnfn60(pinn103) == pinn102 then
						return arg2, false
					end
				end

				local tbl23 = {}
				local tbl24 = {}

				for match in str9:gmatch("%a+") do
					if #match >= 4 and match ~= "added" and match ~= "newest" and match ~= "event" and match ~= "trait" and match ~= "mutation" and match ~= "lucky" and match ~= "block" and match ~= "rarity" then
						for _, pinn103 in ipairs(tbl22) do
							local flag26 = not tbl24[pinn103]

							if flag26 then
								flag26 = pinnfn60(pinn103):lower():find(match, 1, true)
							end

							if flag26 then
								tbl24[pinn103] = true
								tbl23[#tbl23 + 1] = pinn103
							end
						end
					end
				end

				local pinn103

				if #tbl23 == 1 then
					pinn103 = tbl23[1]
				else
					pinn103 = nil

					if #tbl22 == 1 then
						pinn103 = tbl22[1]
					end
				end

				if not pinn103 then
					return arg2, false
				end

				_G.RiddlerLastMetaPin = ("%s -> %s (%s)"):format(arg2, pinn103, kind)
				return pinn103, true
			end
		end
	end

	do
		local function pinnfn60(arg, arg2)
			for _, pinn99 in ipairs(arg2) do
				if arg:find(pinn99, 1, true) then
					return true
				end

				if pinn99:find(" ", 1, true) then
					local pinn100, pinn101, pinn102 = pinn99:gmatch("%S+")
					local pinnn34 = 1
					local flag24 = true

					for k in pinn100, pinn101, pinn102 do
						local pos = arg:find(k, pinnn34, true)

						if not pos then
							flag24 = false
							break
						else
							pinnn34 = pos + #k
						end
					end

					if flag24 then
						return true
					end
				end
			end

			return false
		end

		local tbl19 = {
			"obtain",
			"get",
			"carpet",
			"brainrot track",
			"track",
			"no robux",
			"without robux",
			"free",
			"still available",
		}

		local tbl20 = {
			"besides spyder",
			"except spyder",
			"other than spyder",
			"excluding spyder",
			"not spyder",
			"apart from spyder",
			"besides the spyder",
			"except the spyder",
		}

		local tbl21 = {
			"merchant",
			"shop",
			"taco",
			"secret",
			"admin",
			"brainrot god",
			"common",
			"epic",
			"legendary",
			"mythic",
			"festive",
			"spooky",
			"valentine",
			"easter",
			"summer",
			"honey",
			"patrick",
			"limited",
			"craft",
			"fat sammy",
			"machine",
			"lucky",
			"wheel",
			"bee",
			"sold",
			"buy",
			"from the",
			"stock",
		}

		local tbl22 = {
			game = true,
			whole = true,
			entire = true,
			world = true,
			index = true,
		}

		local tbl23 = {
			" plus ",
			" and ",
			"+",
			" with ",
			" my ",
			" then ",
			"&",
			"combined",
			" also ",
		}

		local tbl24 = {
			"SPYDERELEPHANT",
			"HEADLESSHORSEMAN",
			"STRAWBERRYELEPHANT",
		}

		local function pinnfn61(arg)
			if not pinnfn60(arg, tbl21) then
				for match in arg:gmatch("in the (%a+)") do
					if not tbl22[match] then
						return true
					end
				end

				return false
			end

			return true
		end

		_G.__RiddlerPinRarity = function(arg, arg2)
			if type(arg2) ~= "string" or arg2 == "" then
				return arg2, false
			end
			local str8 = tostring(arg or ""):lower()
			if str8 == "" then
				return arg2, false
			end

			if pinnfn60(str8, { "trait", "mutation", "event", "gear", "tool", "rebirth", "lucky block", "rod", "rarity tier" }) then
				return arg2, false
			end

			if pinnfn60(str8, { "exist count", "how many exist", "exists are there", "how many are there" }) then
				return arg2, false
			end

			if pinnfn60(str8, {
				"second",
				"third",
				"fourth",
				"fifth",
				"2nd",
				"3rd",
				"fourth",
				"5th",
				"next rarest",
				"after the rarest",
			}) then
				return arg2, false
			end

			local pinn99 = pinnfn60(str8, { "rarest", "rarer", "least common", "hardest to find", "most rare" })
			local pinn100 = pinnfn60(str8:gsub("beside", " "), { "best", "most valuable", "most valued", "highest value", "most expensive" })

			if pinn99 or pinn100 then
				if pinn99 and pinn100 then
					return arg2, false
				end

				if pinnfn61(str8) then
					return arg2, false
				end

				if not (str8:find("brainrot", 1, true) or str8:find("animal", 1, true) or str8:find("%f[%a]og%f[%A]")) then
					return arg2, false
				end
				local name

				if pinn99 then
					if pinnfn60(str8, tbl20) then
						local ok, result = pcall(_G.__RiddlerExistCounts)
						if not (ok and type(result) == "table" and #result > 0) then
							return arg2, false
						end

						name = result[1].name
					elseif pinnfn60(str8, tbl19) then
						name = "Strawberry Elephant"
					else
						name = "Spyder Elephant"
					end
				else
					name = pinnfn60(str8, tbl19) and "Strawberry Elephant" or "Headless Horseman"
				end

				local str9 = name:upper():gsub("%W", "")
				local str10 = arg2:upper():gsub("%W", "")
				if str10 == str9 then
					return arg2, false
				end

				if str8:upper():gsub("%W", ""):find(str9, 1, true) then
					return arg2, false
				end

				if str8:find("%d") ~= nil or pinnfn60(str8, tbl23) then
					for _, pinn101 in ipairs(tbl24) do
						if pinn101 == str9 then
							continue
						end
						local pos, pinn102 = str10:find(pinn101, 1, true)

						if pos then
							local str11 = str10:sub(1, pos - 1) .. str9 .. str10:sub(pinn102 + 1)
							_G.RiddlerLastRarityPin = ("%s -> %s (spliced)"):format(arg2, str11)
							return str11, true
						end
					end

					return arg2, false
				end

				_G.RiddlerLastRarityPin = ("%s -> %s"):format(arg2, name)
				return name, true
			end

			return arg2, false
		end
	end
end

do
	do
		local tbl19 = {
			"new",
			"newest",
			"just added",
			"just got added",
			"got added",
			"was added",
			"added to",
			"just came out",
			"latest",
			"this update",
			"in the update",
		}

		local tbl20 = {
			"rarest",
			"best",
			"worst",
			"first",
			"oldest",
			"og",
			"most expensive",
			"cheapest",
			"highest",
			"lowest",
			"used to",
			"removed",
			"deleted",
			"before",
			"last update",
			"previous",
			"how much",
			"income",
			"per second",
			"per sec",
			"produce",
			"produces",
			"earn",
			"earns",
			"earnings",
			"makes how much",
			"generate",
			"generates",
			"mutation",
			"trait",
			"event",
			"luck",
			"multiplier",
			"boost",
			"weather",
			"rebirth",
			"gear",
			"tool",
			"rarity",
			"rarities",
			"fishing",
		}

		local tbl21 = {
			"SPYDERSAMMY",
			"SAMMY",
			"JANUARY",
			"FEBRUARY",
			"MARCH",
			"APRIL",
			"MAY",
			"JUNE",
			"JULY",
			"AUGUST",
			"SEPTEMBER",
			"OCTOBER",
			"NOVEMBER",
			"DECEMBER",
		}

		local function pinnfn60(arg, arg2)
			for _, pinn99 in ipairs(arg2) do
				if arg:find(pinn99, 1, true) then
					return true
				end
			end

			return false
		end

		_G.__RiddlerPinNewBrainrot = function(arg, arg2, arg3)
			if type(arg2) ~= "string" or arg2 == "" then
				return arg2, false
			end
			local value = select(2, arg2:gsub("%a", ""))
			if select(2, arg2:gsub("%d", "")) > 0 and value <= 2 then
				return arg2, false
			end
			local str8 = tostring(arg or ""):lower()
			if str8 == "" then
				return arg2, false
			end

			if not pinnfn60(str8, tbl19) then
				return arg2, false
			end

			if pinnfn60(str8, tbl20) then
				return arg2, false
			end
			local str9 = " " .. str8:gsub("[^%w]", " ") .. " "
			if str9:find(" rod ", 1, true) or str9:find(" rods ", 1, true) then
				return arg2, false
			end
			local tbl22 = {}

			for _, pinn99 in ipairs(_G.__RiddlerReadNewContent()) do
				if pinn99.enabled and pinn99.name and pinn99.name ~= "" then
					tbl22[#tbl22 + 1] = pinn99
				end
			end

			if #tbl22 == 0 then
				return arg2, false
			end
			local str10 = arg2:upper():gsub("%W", "")

			for _, pinn99 in ipairs(tbl22) do
				if str10:find(pinn99.name:upper():gsub("%W", ""), 1, true) then
					return arg2, false
				end
			end

			local flag24 = false

			for match in str8:gmatch("%a+") do
				if #match >= 5 and not ({
					new = true,
					newest = true,
					added = true,
					brainrot = true,
					called = true,
					whats = true,
					which = true,
					update = true,
					released = true,
					recently = true,
				})[match] then
					local flag25 = false

					for _, pinn99 in ipairs(tbl22) do
						if pinn99.name:lower():gsub("%W", ""):find(match, 1, true) then
							flag25 = true
							break
						end
					end

					if not flag25 then
						flag24 = true
					end
				end
			end

			if flag24 then
				local datas = pinn86:FindFirstChild("Datas")
				local pinn99 = pinnfn34(datas and datas:FindFirstChild("Animals"))
				local pinn100 = "table"

				if type(pinn99) == pinn100 then
					local str11 = arg2:upper():gsub("%W", "")

					for k, pinn101 in pairs(pinn99) do
						if type(pinn101) == "table" then
							local str12 = tostring(pinn101.DisplayName or k):upper():gsub("%W", "")
							if #str12 >= 4 and str11:find(str12, 1, true) then
								return arg2, false
							end
						end
					end
				end
			end

			local pinn99 = tbl22[1]
			local match, pinn100 = str8:match("(%d+%.?%d*)%s*([mkb])/?s")

			if match and pinn100 then
				local pinnn34 = pinn100 == "b" and 1e9
				local pinnn35

				if pinnn34 then
					pinnn35 = pinnn34
				else
					pinnn35 = pinn100 == "m" and 1000000
				end

				pinnn35 = pinnn35 or 1000
				local pinnn36 = tonumber(match) * pinnn35

				for _, pinn101 in ipairs(tbl22) do
					local gen = pinn101.gen

					if gen then
						local pinn102 = 1
						gen = math.abs(pinn101.gen - pinnn36) < pinn102
					end

					if gen then
						pinn99 = pinn101
						break
					end
				end
			end

			arg3 = arg3 and pinn99.name:upper():gsub("%W", "") or pinn99.name
			local str11 = arg2:upper()
			local datas = pinn86:FindFirstChild("Datas")
			local pinn101 = pinnfn34(datas and datas:FindFirstChild("Animals"))
			local pinn102 = nil
			local pinnn34 = nil

			if type(pinn101) == "table" then
				pinnn34 = nil
				local pinn103 = nil

				for k, pinn104 in pairs(pinn101) do
					if type(pinn104) == "table" then
						local str12 = tostring(pinn104.DisplayName or k):upper():gsub("%W", "")

						if 4 <= #str12 then
							local pos = str11:find(str12, 1, true)

							if pos and (not pinnn34 or #str12 > pinnn34) then
								pinnn34 = #str12
								pinn103 = pos
							end
						end
					end
				end

				pinn102 = pinn103
			end

			if pinn102 then
				arg3 = arg2:sub(1, pinn102 - 1) .. arg3 .. arg2:sub(pinn102 + pinnn34)
			else
				local match2 = str11:match("(%d+)$")

				if not match2 then
					for _, pinn103 in ipairs(tbl21) do
						if #str11 > #pinn103 and str11:sub(-#pinn103) == pinn103 then
							match2 = pinn103
							break
						end
					end
				end

				if match2 then
					arg3 ..= arg2:sub(#arg2 - #match2 + 1)
				end
			end

			_G.RiddlerLastNewPin = ("%s -> %s"):format(arg2, arg3)
			return arg3, true
		end
	end
end

do
	do
		local tbl19 = {
			"now",
			"current",
			"right now",
			"at the moment",
			"this second",
			"running",
			"active",
			"we are in",
			"we're in",
			"we in",
			"happening",
			"going on",
			"today",
			"live",
		}

		local tbl20 = {
			"was",
			"were",
			"last",
			"previous",
			"before",
			"yesterday",
			"used to",
			"rarest",
			"rare",
			"best",
			"worst",
			"first",
			"oldest",
			"newest",
			"next",
			"will",
			"ever",
			"not running",
			"isn't",
			"is not",
		}

		local function pinnfn60(arg, arg2)
			for _, pinn99 in ipairs(arg2) do
				if arg:find(pinn99, 1, true) then
					return true
				end
			end

			return false
		end

		_G.__RiddlerPinLiveMutation = function(arg, arg2, arg3)
			if type(arg2) ~= "string" or arg2 == "" then
				return arg2, false
			end
			local str8 = tostring(arg or ""):lower()
			if str8 == "" then
				return arg2, false
			end

			if not pinnfn59(arg, "event") then
				return arg2, false
			end

			if not pinnfn60(str8, tbl19) then
				return arg2, false
			end

			if pinnfn60(str8, tbl20) then
				return arg2, false
			end
			local pinn99 = pinnfn58()
			if #pinn99 ~= 1 then
				return arg2, false
			end
			local name = pinn99[1].name
			local pinn100

			if str8:find("mutation", 1, true) then
				pinn100 = _G.__RiddlerEventToMutation[name] or name
			else
				pinn100 = name
			end

			local pinn101 = "string"
			if type(pinn100) ~= pinn101 or pinn100 == "" then
				return arg2, false
			end
			local tbl21 = {}

			for k, pinn102 in pairs(_G.__RiddlerEventToMutation) do
				tbl21[k:gsub("%W", ""):upper()] = true
				tbl21[pinn102:gsub("%W", ""):upper()] = true
			end

			local tbl22 = {}

			for k in pairs(tbl21) do
				tbl22[#tbl22 + 1] = k
			end

			table.sort(tbl22, function(arg4, arg5)
				return #arg4 > #arg5
			end)

			local str9 = pinn100:gsub("%W", ""):upper()
			local str10 = arg2:upper()
			if str10:find(str9, 1, true) then
				return arg2, false
			end

			for _, pinn102 in ipairs(tbl22) do
				if pinn102 == str9 then
					continue
				end
				local pos, pinn103 = str10:find(pinn102, 1, true)

				if pos then
					str9 = arg3 and str9
					local pinn104 = str9 or pinn100
					local str11 = arg2:sub(1, pos - 1) .. pinn104 .. arg2:sub(pinn103 + 1)
					_G.RiddlerLastPin = ("%s -> %s (live: %s)"):format(arg2, str11, name)
					return str11, true
				end
			end

			return arg2, false
		end
	end
end

local result

do
	pinnfn57 = function(arg)
		if not request_ then
			return nil, "no HTTP function on this executor"
		end

		local ok, result2 = pcall(request_, {
			Url = _G.__RiddlerProxyUrl,
			Method = "POST",
			Headers = { ["Content-Type"] = "application/json" },
			Body = pinn98:JSONEncode(arg),
		})

		if not ok then
			return nil, "request error: " .. tostring(result2)
		end

		local ok2, result3 = pcall(function()
			return pinn98:JSONDecode(result2.Body)
		end)

		if not ok2 or type(result3) ~= "table" then
			return nil, "HTTP " .. tostring(result2 and result2.StatusCode)
		end
		return result3
	end

	pinnfn38 = function()
		local pinn99 = pinnfn57({
			op = "warm",
			token = _G.__RiddlerClientToken,
			tier = model,
			user = _G.__RiddlerIdentNow and select(2, pcall(_G.__RiddlerIdentNow)) or _G.__RiddlerIdent,
		})

		return pinn99 ~= nil and pinn99.ok == true
	end

	_G.__RiddlerIdent = nil

	do
		local genv = getgenv and getgenv() or _G
		result = nil

		for _, pinn99 in ipairs({
			"LRM_ScriptKey",
			"LRM_SCRIPT_KEY",
			"script_key",
			"ScriptKey",
			"SCRIPT_KEY",
			"LRM_Key",
			"lrm_key",
			"luarmor_key",
		}) do
			do
				local ok

				ok, result = pcall(function()
					return rawget(genv, pinn99)
				end)

				if ok then
					local pinn100 = "string"
					ok = type(result) == pinn100
				end

				if not (ok and #result >= 6) then
					result = nil
					continue
				end
			end

			break
		end
	end
end

do
	local function pinnfn58(arg)
		local str8 = "riddler:" .. tostring(arg)
		local pinnn34 = 2166136261

		for i = 1, #str8 do
			pinnn34 = bit32.bxor(pinnn34, str8:byte(i)) * 16777619 % 4294967296
		end

		return ("id:%08x"):format(pinnn34)
	end

	local str8 = nil

	for _, pinn99 in ipairs({
		function()
			return gethwid()
		end,
		function()
			return get_hwid()
		end,
		function()
			return syn.get_hwid()
		end,
		function()
			return game:GetService("RbxAnalyticsService"):GetClientId()
		end,
	}) do
		local ok, result2 = pcall(pinn99)
		if ok and type(result2) == "string" and #result2 >= 16 then
			str8 = result2:lower()
			break
		end
	end

	if str8 then
		_G.__RiddlerServerNow = function()
			local ok, result2 = pcall(function()
				return workspace:GetServerTimeNow()
			end)

			if ok and type(result2) == "number" and result2 > 1.6e9 then
				return result2
			end
			return os.time()
		end

		_G.__RiddlerIdentNow = function()
			return pinnfn58(str8 .. "|" .. tostring(math.floor(_G.__RiddlerServerNow() / 900)))
		end
	end

	if str8 then
		_G.__RiddlerIdent = pinnfn58(str8)
	elseif result then
		_G.__RiddlerIdent = pinnfn58(result)
	else
		local ok, result2 = pcall(function()
			return localPlayer.UserId
		end)

		_G.__RiddlerIdent = ok and result2 and pinnfn58(result2) or "id:unknown"
	end
end

do
	do
		do
			local bxor, pinnfn58

			do
				do
					local tbl19 = {
						1116352408,
						1899447441,
						3049323471,
						3921009573,
						961987163,
						1508970993,
						2453635748,
						2870763221,
						3624381080,
						310598401,
						607225278,
						1426881987,
						1925078388,
						2162078206,
						2614888103,
						3248222580,
						3835390401,
						4022224774,
						264347078,
						604807628,
						770255983,
						1249150122,
						1555081692,
						1996064986,
						2554220882,
						2821834349,
						2952996808,
						3210313671,
						3336571891,
						3584528711,
						113926993,
						338241895,
						666307205,
						773529912,
						1294757372,
						1396182291,
						1695183700,
						1986661051,
						2177026350,
						2456956037,
						2730485921,
						2820302411,
						3259730800,
						3345764771,
						3516065817,
						3600352804,
						4094571909,
						275423344,
						430227734,
						506948616,
						659060556,
						883997877,
						958139571,
						1322822218,
						1537002063,
						1747873779,
						1955562222,
						2024104815,
						2227730452,
						2361852424,
						2428436474,
						2756734187,
						3204031479,
						3329325298,
					}

					local band = bit32.band
					bxor = bit32.bxor
					local bnot = bit32.bnot
					local rrotate = bit32.rrotate
					local rshift = bit32.rshift

					pinnfn58 = function(arg)
						local tbl20 = { 1779033703, 3144134277, 1013904242, 2773480762, 1359893119, 2600822924, 528734635, 1541459225 }
						local pinnn34 = #arg
						local str8 = arg .. "\128" .. string.rep("\0", (55 - pinnn34) % 64) .. string.pack(">I8", pinnn34 * 8)

						for i = 1, #str8, 64 do
							local tbl21 = {}

							for i2 = 0, 15 do
								tbl21[i2 + 1] = string.unpack(">I4", str8, i + i2 * 4)
							end

							for i2 = 17, 64 do
								local pinn98 = tbl21[i2 - 15]
								local pinn99 = tbl21[i2 - 2]
								tbl21[i2] = (tbl21[i2 - 16] + bxor(rrotate(pinn98, 7), rrotate(pinn98, 18), rshift(pinn98, 3)) + tbl21[i2 - 7] + bxor(rrotate(pinn99, 17), rrotate(pinn99, 19), rshift(pinn99, 10))) % 4294967296
							end

							local pinn98 = tbl20[1]
							local pinn99 = tbl20[2]
							local pinn100 = tbl20[3]
							local pinn101 = tbl20[4]
							local pinn102 = tbl20[5]
							local pinn103 = tbl20[6]
							local pinn104 = tbl20[7]
							local pinn105 = tbl20[8]

							for i2 = 1, 64 do
								local pinn106 = tbl19[i2]
								local pinnn35 = (pinn105 + bxor(rrotate(pinn102, 6), rrotate(pinn102, 11), rrotate(pinn102, 25)) + bxor(band(pinn102, pinn103), band(bnot(pinn102), pinn104)) + pinn106 + tbl21[i2]) % 4294967296
								local pinnn36 = (pinn101 + pinnn35) % 4294967296
								local pinnn37 = (pinnn35 + (bxor(rrotate(pinn98, 2), rrotate(pinn98, 13), rrotate(pinn98, 22)) + bxor(band(pinn98, pinn99), band(pinn98, pinn100), band(pinn99, pinn100))) % 4294967296) % 4294967296
								pinn105 = pinn104
								pinn101 = pinn100
								pinn104 = pinn103
								pinn100 = pinn99
								pinn103 = pinn102
								pinn99 = pinn98
								pinn102 = pinnn36
								pinn98 = pinnn37
							end

							tbl20[1] = (tbl20[1] + pinn98) % 4294967296
							tbl20[2] = (tbl20[2] + pinn99) % 4294967296
							tbl20[3] = (tbl20[3] + pinn100) % 4294967296
							tbl20[4] = (tbl20[4] + pinn101) % 4294967296
							tbl20[5] = (tbl20[5] + pinn102) % 4294967296
							tbl20[6] = (tbl20[6] + pinn103) % 4294967296
							tbl20[7] = (tbl20[7] + pinn104) % 4294967296
							tbl20[8] = (tbl20[8] + pinn105) % 4294967296
						end

						local tbl21 = {}

						for i = 1, 8 do
							tbl21[i] = string.format("%08x", tbl20[i])
						end

						return table.concat(tbl21)
					end
				end
			end

			do
				local function pinnfn59(arg)
					return (arg:gsub("%x%x", function(arg2)
						return string.char(tonumber(arg2, 16))
					end))
				end

				local function pinnfn60(arg, arg2)
					if #arg > 64 then
						arg = pinnfn59(pinnfn58(arg))
					end

					local str8 = arg .. string.rep("\0", 64 - #arg)
					local tbl19 = {}
					local tbl20 = {}

					for i = 1, 64 do
						local pinn98 = str8:byte(i)
						tbl19[i] = string.char(bxor(pinn98, 92))
						tbl20[i] = string.char(bxor(pinn98, 54))
					end

					return pinnfn58(table.concat(tbl19) .. pinnfn59(pinnfn58(table.concat(tbl20) .. arg2)))
				end

				_G.__RiddlerNonce = function()
					local tbl19 = {}

					for i = 1, 8 do
						tbl19[#tbl19 + 1] = string.format("%02x", math.random(0, 255))
					end

					return table.concat(tbl19)
				end

				_G.__RiddlerSign = function(arg, arg2)
					local ok, result = pcall(pinnfn60, arg, arg2)
					return ok and result or nil
				end

				_G.__RiddlerChecksum = function(arg)
					local ok, result = pcall(pinnfn58, arg)
					return ok and result or nil
				end

				_G.__RiddlerDecrypt = function(arg, arg2, arg3)
					local pinn98 = "string"
					if type(arg3) ~= pinn98 or arg3 == "" then
						return nil
					end

					if #arg3 % 2 ~= 0 then
						return nil
					end

					local ok, result = pcall(function()
						local tbl19 = {}
						local pinnn34 = #arg3 // 2

						for i = 0, pinnn34 - 1, 32 do
							local pinn99 = pinnfn60(arg, arg2 .. ":" .. tostring(i // 32))

							for i2 = 0, 31 do
								local pinnn35 = i + i2

								if not (pinnn35 >= pinnn34) then
									local num = tonumber(arg3:sub(pinnn35 * 2 + 1, pinnn35 * 2 + 2), 16)
									local num2 = tonumber(pinn99:sub(i2 * 2 + 1, i2 * 2 + 2), 16)
									tbl19[#tbl19 + 1] = string.char(bit32.bxor(num, num2))
									continue
								end

								break
							end
						end

						return table.concat(tbl19)
					end)

					return ok and result or nil
				end

				_G.__RiddlerCryptoOK = false
			end
		end

		do
			local function pinnfn58(arg, arg2)
				local riddlerIdent = _G.__RiddlerIdent

				if _G.__RiddlerIdentNow then
					local ok, result = pcall(_G.__RiddlerIdentNow)

					if ok and type(result) == "string" and result ~= "" then
						riddlerIdent = result
					end
				end

				local tbl19 = { op = arg, token = _G.__RiddlerClientToken, tier = model, user = riddlerIdent }

				for k, pinn98 in pairs(arg2) do
					tbl19[k] = pinn98
				end

				local pinn98 = nil

				if _G.__RiddlerCryptoOK then
					pinn98 = _G.__RiddlerNonce()
					tbl19.nonce = pinn98
					tbl19.enc = 1
					local str8 = ("%s|%s|%s|%s"):format(tostring(os.time()), pinn98, tostring(riddlerIdent), tostring(arg2.riddle or arg))
					tbl19.sig = _G.__RiddlerSign(_G.__RiddlerClientToken, str8)
					tbl19.checksum = _G.__RiddlerChecksum(str8)
				end

				local pinn99, pinn100 = pinnfn57(tbl19)
				if not pinn99 then
					return nil, pinn100
				end

				if not pinn99.ok then
					return nil, tostring(pinn99.error or "proxy error")
				end
				local text = pinn99.text

				if type(pinn99.data) == "string" and pinn98 then
					text = _G.__RiddlerDecrypt(_G.__RiddlerClientToken, pinn98, pinn99.data)
				end

				if type(text) ~= "string" or pinnfn32(text) == "" then
					return nil, "model returned no text"
				end
				return pinnfn32(text)
			end

			_G.__RiddlerSuffixes = { "EVENT" }

			local function pinnfn59(arg)
				if arg == "REDCARPET" or arg == "THEREDCARPET" then
					return "REDCARPET"
				end

				for _, riddlerSuffixe in ipairs(_G.__RiddlerSuffixes) do
					if not (#riddlerSuffixe < #arg) then
						continue
					end
					local str8 = arg:sub(1, #arg - #riddlerSuffixe)
					if arg:sub(-#riddlerSuffixe) == riddlerSuffixe and #str8 >= 3 then
						return str8
					end
				end

				return arg
			end

			_G.__RiddlerPreserveNumericSuffix = function(arg, arg2)
				local str8 = tostring(arg or "")
				local match = str8:match("[Pp][Ll][Uu][Ss]%s+(%d+)%s*[%?%.!]*$") or str8:match("%+%s*(%d+)%s*[%?%.!]*$")
				if not match then
					return arg2
				end
				local str9 = tostring(arg2 or "")
				local str10

				if str9:sub(-#match) ~= match then
					str10 = str9 .. match
				else
					str10 = str9
				end

				return str10
			end

			local tbl19 = {
				"brainrot",
				"mutation",
				"trait",
				"rarity",
				"event",
				"rebirth",
				" pet",
				"secret",
				"og ",
				" og",
				"admin",
				"fuse",
				"craft",
				"machine",
				"ritual",
				"carpet",
				"index",
				"base skin",
				"merchant",
				"steal a brainrot",
				"sab",
				"come from",
				"came from",
				"come out in",
				"obtained",
			}

			local tbl20 = {
				"my ",
				" my ",
				"programmer",
				"coder",
				"developer",
				"sammy",
				"jandel",
				"i add",
				"i added",
				"did i ",
				"am i ",
				"me?",
			}

			local function pinnfn60(arg)
				local str8 = tostring(arg or ""):lower()

				for _, pinn98 in ipairs(tbl19) do
					if str8:find(pinn98, 1, true) then
						return true
					end
				end

				for _, pinn98 in ipairs(tbl20) do
					if str8:find(pinn98, 1, true) then
						return true
					end
				end

				return false
			end

			_G.__RiddlerNewIncomeSuspect = function(arg, arg2)
				local str8 = tostring(arg or ""):lower()
				if not (str8:find("new", 1, true) or str8:find("latest", 1, true) or str8:find("just", 1, true)) then
					return false
				end
				local pinn98 = false

				for _, pinn99 in ipairs({ "per second", "per sec", "mps", "income", "make", "makes", "earn", "produce", "how much" }) do
					if str8:find(pinn99, 1, true) then
						pinn98 = true
						break
					end
				end

				if not pinn98 then
					return false
				end

				str8:gsub("[^%w]", "")
				local tbl21 = {}

				for _, pinn99 in ipairs(_G.__RiddlerReadNewContent()) do
					if pinn99.enabled and pinn99.gen then
						tbl21[#tbl21 + 1] = pinn99
						tostring(pinn99.name):lower():gsub("[^%w]", "")
						local str9 = tostring(pinn99.name)

						for match in str9:lower():gmatch("%a+") do
							if #match >= 4 and str8:find(match, 1, true) then
								return false
							end
						end
					end
				end

				if #tbl21 == 0 then
					return false
				end
				local match, pinn99 = tostring(arg2 or ""):gsub("^%s*%a+%s*:%s*", ""):match("([%d%.]+)%s*([KkMmBbTt]?)")
				local num = tonumber(match)
				if not num then
					return false
				end
				local pinnn34 = num * (({ K = 1000, M = 1000000, B = 1e9, T = 1e12 })[pinn99:upper()] or 1)

				for _, pinn100 in ipairs(tbl21) do
					local pinnn35 = pinn100.gen * 0.005
					if math.abs(pinnn34 - pinn100.gen) <= pinnn35 then
						return false
					end
				end

				return true
			end

			_G.__RiddlerRawNeedsSmartRetry = function(arg, arg2)
				local match, pinn98 = tostring(arg2 or ""):match("^%s*(%a+)%s*:%s*(.*)$")
				match = match and match:upper() or "CODE"
				if match == "ANSWER" and pinnfn60(arg) then
					return _G.__RiddlerMalformedCodeBody(pinn98)
				end
				return match == "CODE" and _G.__RiddlerMalformedCodeBody(pinn98)
			end

			pinnfn39 = function(arg)
				local pinn98 = _G.__RiddlerCacheKey(arg)

				if pinnfn60(arg) then
					local pinn99 = _G.__RiddlerResolveLiveExtreme(arg)

					if pinn99 then
						tbl17[pinn98] = { text = pinn99, isCode = true, searched = false }
						_G.RiddlerLastAnswer = pinn99
						return pinn99, false, nil, true, false
					end
				end

				local ok, riddlerLastAnswer = pcall(_G.__RiddlerResolvePrizeParts, arg)
				if ok and type(riddlerLastAnswer) == "string" and riddlerLastAnswer ~= "" then
					_G.RiddlerLastAnswer = riddlerLastAnswer
					return riddlerLastAnswer, false, nil, true, false
				end
				local pinn99 = tbl17[pinn98]
				if pinn99 then
					_G.RiddlerLastAnswer = pinn99.text
					return pinn99.text, true, nil, pinn99.isCode, pinn99.searched, nil, pinn99.altForm, pinn99.altAnswer
				end
				local solve, pinn100 = pinnfn58("solve", { riddle = arg, liveState = _G.__RiddlerKeepLive(pinnfn56(arg)) })
				if not solve then
					return nil, false, pinn100
				end

				if model == "FASTER" and _G.__RiddlerRawNeedsSmartRetry(arg, solve) then
					solve = pinnfn58("solve", { riddle = arg, liveState = _G.__RiddlerKeepLive(pinnfn56(arg)), tier = "FAST" }) or solve
				end

				local match = solve:match("^OVERRIDE:%s*(.+)$")

				if match then
					local pinn101 = pinnfn32(match)
					tbl17[pinn98] = { text = pinn101, isCode = true, searched = false }
					return pinn101, false, nil, true, false
				end

				_G.RiddlerLastRaw = solve
				local str8 = solve:gsub("^[\"']", ""):gsub("[\"']$", "")
				local match2, pinn101 = str8:match("^(.-)%s*||%s*ALT%s*:%s*(.+)$")

				if not match2 then
					match2, pinn101 = str8:match("^(.-)%s+ALT%s*:%s*(.+)$")
				end

				local flag24 = match2 and pinnfn32(match2) ~= ""
				local pinn102 = nil

				if flag24 then
					str8 = pinnfn32(match2)
					pinn102 = pinnfn32(pinn101)
				end

				local match3, pinn103 = str8:match("^(%a+)%s*:%s*(.*)$")
				local str9 = "CODE"

				if match3 then
					str9 = match3:upper()
					local flag25 = str9 == "ANSWER" or str9 == "CODE" or str9 == "SEARCHCODE" or str9 == "SEARCHANSWER" or str9 == "SEARCH"
					local str10 = "CODE"

					if flag25 then
						str8 = pinn103
					else
						str9 = str10
					end
				end

				if str9 == "SEARCH" then
					str9 = "SEARCHANSWER"
				end

				local str10 = pinnfn32(str8)
				local flag25 = str9 == "SEARCHCODE" or str9 == "SEARCHANSWER"
				local pinn104 = nil

				if flag25 then
					local match4, pinn105 = str10:match("^(.-)%s*|%s*(.*)$")
					pinn104 = pinnfn32(match4 or str10)
					str10 = pinnfn32(pinn105 or "")

					if pinn104 == "" then
						pinn104 = arg
					end

					str9 = str9 == "SEARCHCODE" and "CODE" or "ANSWER"
					str10 = str10 ~= "" and str10 or "..."
				end

				if str9 ~= "CODE" and pinnfn60(arg) then
					str9 = "CODE"
				end

				if str9 == "CODE" and _G.__RiddlerMalformedCodeBody(str10) then
					return nil, false, "model returned an explanation instead of a code"
				end
				local flag26 = str9 == "CODE"
				local str11, str12

				if flag26 then
					str11 = str10:gsub("%s+", ""):gsub("(%d)%.(%d)", "%1\1%2"):gsub("[%.,']", ""):gsub("\1", "."):upper()
					str12 = _G.__RiddlerPreserveNumericSuffix(arg, pinnfn59(str11))
					local pinn105 = nil

					if str11 == str12 then
						str11 = pinn105
					end
				else
					str12 = str10:gsub(",", ""):gsub("%s+", " "):gsub("%.$", "")
					str11 = nil
				end

				local pinn105, pinn106 = _G.__RiddlerPinLiveMutation(arg, _G.__RiddlerExpandUnits(str12), flag26)
				local pinn107, pinn108 = _G.__RiddlerPinNewBrainrot(arg, pinn105, flag26)
				pinn106 = pinn106 or pinn108
				local pinn109, pinn110 = _G.__RiddlerPinNewGear(arg, pinn107, flag26)
				pinn106 = pinn106 or pinn110
				local pinn111, pinn112 = _G.__RiddlerPinNewMeta(arg, pinn109, flag26)
				pinn106 = pinn106 or pinn112
				local pinn113, pinn114 = _G.__RiddlerPinRarity(arg, pinn111, flag26)
				pinn114 = pinn106 or pinn114
				local pinn115, pinn116 = _G.__RiddlerSnapSpelling(pinn113)

				if pinn116 then
					pinn114 = true
				else
					pinn115 = pinn113
				end

				local pinn117 = _G.__RiddlerCheckDescribed(arg, pinn115, flag26)

				if pinn117 then
					_G.RiddlerLastNameWarning = pinn117
				end

				if pinn115 == "" or pinn115 == "NIL" or pinn115 == "..." then
					return nil, false, "model gave an empty answer"
				end

				if pinn102 then
					local str13

					if flag26 then
						str13 = pinnfn59(pinn102:gsub("%s+", ""):gsub("[%.,']", ""):upper())
					else
						str13 = flag26
					end

					str13 = str13 or pinn102:gsub(",", ""):gsub("%s+", " "):gsub("%.$", "")

					if str13 == pinn115 or str13 == "" then
						pinn102 = nil
					else
						pinn102 = str13
					end

					if pinn114 then
						pinn102 = nil
					end
				end

				_G.RiddlerLastAnswer = pinn115

				if not pinn104 then
					tbl17[pinn98] = { text = pinn115, isCode = flag26, searched = false, altForm = str11, altAnswer = pinn102 }
				end

				return pinn115, false, nil, flag26, false, pinn104, str11, pinn102, pinn98
			end

			pinnfn40 = function(arg, arg2, arg3, arg4, arg5)
				local search = pinnfn58("search", { riddle = arg, query = arg2, isCode = arg4 })
				if not search then
					return nil
				end
				local pinn98 = pinnfn32(search:gsub("^%a+%s*:%s*", ""))
				local str8

				if arg4 then
					local str9 = pinn98:gsub("%s+", ""):gsub("[%.,]$", ""):upper()
					str8 = _G.__RiddlerPreserveNumericSuffix(arg, str9)
				else
					str8 = pinn98:gsub(",", ""):gsub("%s+", " "):gsub("%.$", "")
				end

				if str8 == "" then
					return nil
				end
				tbl17[arg5 or _G.__RiddlerCacheKey(arg)] = { text = str8, isCode = arg4, searched = true }
				if str8 == arg3 then
					return nil
				end
				return str8
			end
		end
	end

	do
		local tbl19, tbl20

		do
			tbl19 = {
				"^%s*$",
				"joined the server",
				"left the server",
				"has left",
				"has joined",
				"just stole",
				"stole a ",
				"was stolen",
				"robbed",
				"welcome to",
				"thanks for playing",
				"^%s*%d+%s*$",
			}

			do
				local tbl21 = {
					"use",
					"using",
					"redeem",
					"type",
					"enter",
					"write",
					"claim",
					"grab",
					"check",
					"here is",
					"heres",
					"here's",
					"there is",
					"theres",
					"there's",
				}

				_G.__RiddlerTrigArticles = {
					"",
					"the%s+",
					"a%s+",
					"an%s+",
					"this%s+",
					"your%s+",
					"new%s+",
				}

				tbl20 = {
					"code%s+is",
					"codes?%s+are",
					"code%s+for",
					"code%s+to%s+use",
					"code%s*[:%-]",
					"new%s+code",
					"free%s+code",
					"secret%s+code",
					"working%s+code",
					"another%s+code",
					"riddle%s*[:%-]",
					"riddle%s+is",
					"answer%s+is",
					"guess%s+the",
					"hint%s*[:%-]",
				}

				for _, pinn98 in ipairs(tbl21) do
					local str8 = pinn98:gsub("%s+", "%%s+")

					for _, riddlerTrigArticle in ipairs(_G.__RiddlerTrigArticles) do
						tbl20[#tbl20 + 1] = str8 .. "%s+" .. riddlerTrigArticle .. "code"
					end
				end
			end
		end

		_G.__RiddlerTrigNames = { "sammy" }

		do
			local function pinnfn58(arg)
				for match, match2 in arg:gmatch("()([%w_]+)") do
					if #match2 >= 4 and match2:match("%a") and (match2:match("%u") or match2:match("%d")) then
						return arg:sub(match)
					end
				end
			end

			local tbl21 = {
				"code is",
				"use code",
				"event has been activated",
				"has been activated",
				"has activated",
				"your base is already locked",
				"your base is full",
				"request failed",
				"base is already locked",
				"you locked your base",
				"you have locked your base",
				"locked your base",
				"brainrot express has arrived",
				"brainrot express has arrv",
				"brainrot express leaving in",
				"sammy activated",
				"spydersammy activated",
				"x luck",
				"free spin",
				"spin is already in progress",
				"hold on before spinning again",
				"please wait before buying another brainrot",
				"not enough honey",
				"out of stock",
				"trade has been completed",
				"broke into your base",
				"someone is stealing",
				"event has started",
				"the crystal event is here",
			}

			pinnfn41 = function(arg)
				if not pinn92 or not flag20 then
					return false
				end
				local str8 = arg:lower()

				for _, pinn98 in ipairs(tbl21) do
					if str8:find(pinn98, 1, true) then
						return true, pinn98
					end
				end

				return false
			end

			pinnfn42 = function(arg)
				local str8 = arg:lower()
				local pinn98 = nil
				local pinn99 = nil

				local function pinnfn59(arg2, arg3, arg4)
					local pinnn34 = 1

					while true do
						local ok, result, result2 = pcall(string.find, str8, arg2, pinnn34, arg3)

						if not (not ok or not result) then
							if not pinn98 or result2 > pinn98 then
								pinn98 = result2
								pinn99 = arg4
							end

							pinnn34 = result2 + 1
							continue
						end

						break
					end
				end

				for _, pinn100 in ipairs(tbl20) do
					pinnfn59(pinn100, false, false)
				end

				if str8:find("code") or str8:find("riddle") then
					for _, riddlerTrigName in ipairs(_G.__RiddlerTrigNames) do
						local pinn100 = true
						local pinn101 = true
						pinnfn59(riddlerTrigName:lower(), pinn100, pinn101)
					end
				end

				if not pinn98 then
					return nil
				end
				local str9 = arg:sub(pinn98 + 1)
				local pinn100 = pinnfn58(str9)
				if pinn99 then
					return pinn100
				end
				return pinn100 or ""
			end
		end

		pinnfn43 = function(arg)
			local str8 = arg:lower()
			if #str8 < 3 then
				return false
			end

			for _, pinn98 in ipairs(tbl19) do
				if str8:find(pinn98) then
					return false
				end
			end

			return true
		end
	end

	do
		do
			do
				local function pinnfn58(arg)
					if not getupvalues_ then
						return {}
					end
					local ok, result = pcall(getupvalues_, arg)
					local tbl19 = {}

					if ok and result then
						for _, pinn98 in pairs(result) do
							if typeof(pinn98) == "Instance" and (pinn98:IsA("RemoteEvent") or pinn98:IsA("RemoteFunction") or pinn98:IsA("UnreliableRemoteEvent")) and pinn98.Parent == pinn89 then
								table.insert(tbl19, pinn98)
							end
						end
					end

					return tbl19
				end

				pinnfn44 = function()
					local ok, result = pcall(function()
						return require(pinn86.Controllers:FindFirstChild("NotificationController", true))
					end)

					if ok and type(result) == "table" and type(result.Start) == "function" then
						return pinnfn58(result.Start)[1]
					end
				end
			end
		end

		tbl18 = {
			bg = Color3.fromRGB(7, 12, 22),
			panel = Color3.fromRGB(13, 23, 38),
			panel2 = Color3.fromRGB(20, 39, 58),
			line = Color3.fromRGB(35, 69, 91),
			acc = Color3.fromRGB(0, 205, 230),
			acc2 = Color3.fromRGB(0, 112, 170),
			accHi = Color3.fromRGB(105, 235, 255),
			txt = Color3.fromRGB(235, 247, 255),
			sub = Color3.fromRGB(151, 180, 201),
			ok = Color3.fromRGB(55, 195, 105),
			err = Color3.fromRGB(205, 50, 50),
			warn = Color3.fromRGB(255, 215, 0),
			input = Color3.fromRGB(8, 17, 29),
			dark = Color3.fromRGB(5, 10, 18),
		}

		gothamMedium = Enum.Font.GothamMedium
		gothamBold = Enum.Font.GothamBold
		gothamBlack = Enum.Font.GothamBlack

		pinnfn45 = function(arg, arg2, parent)
			local instance = Instance.new(arg)
			local pinn98 = pairs
			local tbl19 = arg2 or {}

			for k, pinn99 in pinn98(tbl19) do
				instance[k] = pinn99
			end

			if parent then
				instance.Parent = parent
			end

			return instance
		end

		pinnfn46 = function(arg, arg2)
			pinnfn45("UICorner", { CornerRadius = UDim.new(0, arg2 or 10) }, arg)
		end

		pinnfn47 = function(arg, arg2, arg3, arg4)
			return pinnfn45("UIStroke", { Color = arg2 or tbl18.line, Thickness = arg3 or 1, Transparency = arg4 or 0 }, arg)
		end

		pinnfn48 = function(arg, arg2, arg3, arg4)
			pinn97:Create(arg, TweenInfo.new(arg2, arg4 or Enum.EasingStyle.Quad), arg3):Play()
		end

		do
			local function pinnfn58(arg, arg2, arg3, arg4)
				return pinnfn45("UIGradient", { Color = ColorSequence.new(arg2, arg3), Rotation = arg4 or 90 }, arg)
			end

			pinnfn49 = function(arg, arg2, arg3, arg4, arg5, arg6)
				return pinnfn45("TextLabel", {
					BackgroundTransparency = 1,
					Text = arg,
					Font = arg4 or gothamMedium,
					TextSize = arg2 or 12,
					TextColor3 = arg3 or tbl18.txt,
					TextXAlignment = arg5 or Enum.TextXAlignment.Left,
					}, arg6)
			end

			local function pinnfn59(arg, arg2)
				local flag24 = nil
				local pinn98 = nil
				local pinn99

				arg.InputBegan:Connect(function(input)
					if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
						local position = input.Position
						local position2 = arg2.Position
						flag24 = true
						pinn98 = position
						pinn99 = position2

						input.Changed:Connect(function()
							if input.UserInputState == Enum.UserInputState.End then
								flag24 = false
							end
						end)
					end
				end)

				pinn96.InputChanged:Connect(function(input)
					if flag24 and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
						local pinnn34 = input.Position - pinn98
						arg2.Position = UDim2.new(pinn99.X.Scale, pinn99.X.Offset + pinnn34.X, pinn99.Y.Scale, pinn99.Y.Offset + pinnn34.Y)
					end
				end)
			end

			pinnfn50 = function(arg, arg2, arg3, arg4)
				local Frame3 = pinnfn45("Frame", {
					Name = arg,
					Size = UDim2.fromOffset(arg2, arg3),
					BackgroundColor3 = tbl18.bg,
					BorderSizePixel = 0,
					Active = true,
					ClipsDescendants = true,
				})

				pinnfn46(Frame3, 24)
				pinnfn58(Frame3, Color3.fromRGB(17, 34, 52), Color3.fromRGB(6, 12, 22), 115)
				pinnfn47(Frame3, tbl18.acc, 1.5, 0.18)

				if flag18 then
					pinnfn45("UIScale", { Name = "WinScale", Scale = 0.65 * _G.__RiddlerUiMult() }, Frame3)
				end

				local Frame4 = pinnfn45("Frame", { Size = UDim2.new(1, 0, 0, 44), BackgroundColor3 = tbl18.panel, BorderSizePixel = 0 }, Frame3)
				pinnfn46(Frame4, 24)

				pinnfn45("Frame", {
					Size = UDim2.new(1, 0, 0, 14),
					Position = UDim2.new(0, 0, 1, -14),
					BackgroundColor3 = tbl18.panel,
					BorderSizePixel = 0,
					}, Frame4)

				local ImageLabel = pinnfn45("ImageLabel", {
					Size = UDim2.fromOffset(24, 24),
					Position = UDim2.new(0, 12, 0.5, -12),
					BackgroundColor3 = tbl18.panel2,
					BorderSizePixel = 0,
					Image = "", -- Replaced original T logo with PINN lettermark
					}, Frame4)

				pinnfn46(ImageLabel, 12)
				pinnfn47(ImageLabel, tbl18.acc, 1.5, 0.2)
				pinnfn45("TextLabel", {
					Name = "PINNLogoLetter",
					Size = UDim2.fromScale(1, 1),
					BackgroundTransparency = 1,
					Text = "P",
					Font = gothamBlack,
					TextSize = 17,
					TextColor3 = tbl18.acc,
					TextXAlignment = Enum.TextXAlignment.Center,
					TextYAlignment = Enum.TextYAlignment.Center,
					BorderSizePixel = 0,
					}, ImageLabel)
				local pinn98 = pinnfn49(arg4, 15, tbl18.txt, gothamBlack, Enum.TextXAlignment.Left, Frame4)
				pinn98.Size = UDim2.new(1, -132, 1, 0)
				pinn98.Position = UDim2.fromOffset(44, 0)
				pinnfn59(Frame4, Frame3)
				return Frame3, Frame4, ImageLabel, pinn98
			end

			pinnfn51 = function(arg, arg2)
				local TextButton = pinnfn45("TextButton", {
					BackgroundColor3 = tbl18.panel2,
					Text = arg,
					Font = gothamBold,
					TextSize = 13,
					TextColor3 = tbl18.txt,
					AutoButtonColor = false,
					BorderSizePixel = 0,
					}, arg2)

				pinnfn46(TextButton, 7)
				local pinn98 = pinnfn47(TextButton, tbl18.line, 1, 0.2)

				TextButton.MouseEnter:Connect(function()
					pinnfn48(TextButton, 0.12, { BackgroundColor3 = tbl18.panel })
					pinnfn48(pinn98, 0.12, { Color = tbl18.acc, Transparency = 0 })
				end)

				TextButton.MouseLeave:Connect(function()
					pinnfn48(TextButton, 0.12, { BackgroundColor3 = tbl18.panel2 })
					pinnfn48(pinn98, 0.12, { Color = tbl18.line, Transparency = 0.2 })
				end)

				return TextButton
			end

			pinnfn52 = function(arg, arg2)
				local TextButton = pinnfn45("TextButton", {
					BackgroundColor3 = tbl18.acc,
					Text = arg,
					Font = gothamBlack,
					TextSize = 13,
					TextColor3 = Color3.fromRGB(255, 255, 255),
					AutoButtonColor = false,
					BorderSizePixel = 0,
					}, arg2)

				pinnfn46(TextButton, 7)
				pinnfn58(TextButton, tbl18.acc, tbl18.acc2, 90)

				TextButton.MouseEnter:Connect(function()
					pinnfn48(TextButton, 0.12, { BackgroundColor3 = tbl18.accHi })
				end)

				TextButton.MouseLeave:Connect(function()
					pinnfn48(TextButton, 0.12, { BackgroundColor3 = tbl18.acc })
				end)

				return TextButton
			end
		end
	end

	if getgenv and getgenv().StopRiddler then
		pcall(getgenv().StopRiddler)
	end

	do
		local hui = gethui and gethui() or playerGui
		local riddler = hui:FindFirstChild("PINN_LARPER")

		if riddler then
			riddler:Destroy()
		end

		ScreenGui = pinnfn45("ScreenGui", {
			Name = "PINN_LARPER",
			ResetOnSpawn = false,
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
			DisplayOrder = 251,
			}, hui)
	end
end

do
	local pinn98

	do
		pinnn32 = 316
		pinnn33 = 544
		Main, pinn98 = pinnfn50("Main", 316, 544, "PINN LARPER")
		Main.Position = UDim2.new(1, -pinnn32 - 24, 0.5, -math.floor(pinnn33 / 2))

		if flag18 then
			local floor2 = math.floor
			local pinn99 = 2
			Main.Position = UDim2.new(1, -math.floor(pinnn32 * 0.65 * _G.__RiddlerUiMult()) - 8, 0.5, -floor2(pinnn33 * 0.65 * _G.__RiddlerUiMult() / pinn99))
		end

		Main.Parent = ScreenGui

		pinnfn46(pinnfn45("ImageLabel", {
			Name = "CityBg",
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			ZIndex = 0,
			Image = "rbxthumb://type=Asset&id=96519310989847&w=420&h=420",
			ImageTransparency = 0.78,
			ImageColor3 = Color3.fromRGB(80, 190, 220),
			ScaleType = Enum.ScaleType.Crop,
			}, Main), 24)

		do
			local Frame3 = pinnfn45("Frame", {
				Name = "LeavesLayer",
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				ZIndex = 0,
				ClipsDescendants = true,
				}, Main)

			pinnfn46(Frame3, 18)
			local pinn99 = _G
			local riddlerPetalPalette = {}
			local color = Color3.fromRGB(170, 245, 255)
			local color2 = Color3.fromRGB(70, 220, 245)
			local color3 = Color3.fromRGB(0, 165, 215)
			local color4 = Color3.fromRGB(205, 250, 255)
			local color5 = Color3.fromRGB
			riddlerPetalPalette[1] = color
			riddlerPetalPalette[2] = color2
			riddlerPetalPalette[3] = color3
			riddlerPetalPalette[4] = color4

			do
				local values = table.pack(color5(25, 190, 230))
				table.move(values, 1, values.n, 5, riddlerPetalPalette)
			end

			pinn99.__RiddlerPetalPalette = riddlerPetalPalette

			for i = 1, 18 do
				task.spawn(function()
					task.wait(math.random() * 2.5)

					while Frame3.Parent do
						local pinnn34 = math.random(5, 8)
						local pinnn35 = pinnn34 + math.random(2, 4)
						local pinnn36 = math.random()

						local Frame4 = pinnfn45("Frame", {
							Size = UDim2.new(0, pinnn34, 0, pinnn35),
							AnchorPoint = Vector2.new(0.5, 0.5),
							Position = UDim2.new(pinnn36, 0, 0, -pinnn35),
							BackgroundColor3 = _G.__RiddlerPetalPalette[math.random(#_G.__RiddlerPetalPalette)],
							BackgroundTransparency = 0.15 + math.random() * 0.35,
							BorderSizePixel = 0,
							ZIndex = 0,
							Rotation = math.random(0, 359),
							}, Frame3)

						pinnfn45("UICorner", { CornerRadius = UDim.new(1, 0) }, Frame4)
						local new = NumberSequenceKeypoint.new

						pinnfn45("UIGradient", {
							Rotation = math.random(0, 359),
							Transparency = NumberSequence.new({ NumberSequenceKeypoint.new(0, 0), new(1, 0.55) }),
							}, Frame4)

						local pinnn37 = 3.2 + math.random() * 2.6
						local pinnn38 = (math.random() - 0.5) * 0.35
						local pinnn39 = math.random(180, 540)
						local pinnn40 = math.random() < 0.5 and -1 or 1
						pinn97:Create(Frame4, TweenInfo.new(pinnn37, Enum.EasingStyle.Linear), { Position = UDim2.new(pinnn36 + pinnn38, 0, 1, pinnn35 * 2), Rotation = Frame4.Rotation + pinnn39 * pinnn40 }):Play()
						task.wait(pinnn37)

						if Frame4 and Frame4.Parent then
							Frame4:Destroy()
						end

						task.wait(math.random() * 0.5)
					end
				end)
			end
		end
	end

	Frame = pinnfn45("Frame", {
		Size = UDim2.fromOffset(8, 8),
		Position = UDim2.new(1, -160, 0.5, -4),
		BackgroundColor3 = tbl18.sub,
		BorderSizePixel = 0,
		}, pinn98)

	pinnfn46(Frame, 4)
	Test = pinnfn51("Test", pinn98)
	Test.Size = UDim2.fromOffset(38, 22)
	Test.Position = UDim2.new(1, -149, 0.5, -11)
	Test.TextSize = 10
	Feed = pinnfn51("Feed", pinn98)
	Feed.Size = UDim2.fromOffset(38, 22)
	Feed.Position = UDim2.new(1, -108, 0.5, -11)
	Feed.TextSize = 10
	Settings = pinnfn51("Settings", pinn98)
	Settings.Size = UDim2.fromOffset(38, 22)
	Settings.Position = UDim2.new(1, -67, 0.5, -11)
	Settings.TextSize = 8

	do
		local pinn99 = pinnfn51("", pinn98)
		pinn99.Size = UDim2.fromOffset(22, 22)
		pinn99.Position = UDim2.new(1, -26, 0.5, -11)

		pinnfn46(pinnfn45("Frame", {
			Size = UDim2.fromOffset(10, 2),
			Position = UDim2.new(0.5, -5, 0.5, -1),
			BackgroundColor3 = tbl18.txt,
			BorderSizePixel = 0,
			}, pinn99), 1)

		local Frame3 = pinnfn45("Frame", {
			Size = UDim2.fromOffset(2, 10),
			Position = UDim2.new(0.5, -1, 0.5, -5),
			BackgroundColor3 = tbl18.txt,
			BorderSizePixel = 0,
			Visible = false,
			}, pinn99)

		pinnfn46(Frame3, 1)
		local visible = false

		pinn99.MouseButton1Click:Connect(function()
			visible = not visible
			Frame3.Visible = visible
			pinnfn48(Main, 0.18, { Size = UDim2.fromOffset(316, visible and 44 or 544) })
		end)
	end
end

do
	do
		Frame2 = pinnfn45("Frame", {
			Size = UDim2.new(1, -20, 1, -54),
			Position = UDim2.fromOffset(10, 48),
			BackgroundTransparency = 1,
			}, Main)

		pinnfn45("UIListLayout", {
			Padding = UDim.new(0, 5),
			SortOrder = Enum.SortOrder.LayoutOrder,
			}, Frame2)

		do
			local Frame3 = pinnfn45("Frame", {
				Size = UDim2.new(1, 0, 0, 32),
				BackgroundColor3 = tbl18.panel,
				BorderSizePixel = 0,
				LayoutOrder = 1,
				}, Frame2)

			pinnfn46(Frame3, 9)
			pinnfn47(Frame3, tbl18.line, 1, 0.3)

			local Frame4 = pinnfn45("Frame", {
				Size = UDim2.fromOffset(8, 8),
				Position = UDim2.new(0, 12, 0.5, -4),
				BackgroundColor3 = tbl18.sub,
				BorderSizePixel = 0,
				}, Frame3)

			pinnfn46(Frame4, 4)
			local pinn96 = pinnfn49("starting...", 12, tbl18.txt, gothamBold, Enum.TextXAlignment.Left, Frame3)
			pinn96.Size = UDim2.new(1, -32, 1, 0)
			pinn96.Position = UDim2.fromOffset(28, 0)
			pinn96.TextTruncate = Enum.TextTruncate.AtEnd

			pinnfn53 = function(text, arg)
				pinn96.Text = text
				local ok = arg == "ok" and tbl18.ok or arg == "err" and tbl18.err or arg == "busy" and tbl18.acc or arg == "wait" and tbl18.warn or tbl18.txt
				pinn96.TextColor3 = ok
				Frame4.BackgroundColor3 = ok
				return
			end
		end
	end

	do
		local Frame3 = pinnfn45("Frame", {
			Size = UDim2.new(1, 0, 0, 44),
			BackgroundColor3 = tbl18.panel,
			BorderSizePixel = 0,
			LayoutOrder = 2,
			}, Frame2)

		pinnfn46(Frame3, 9)
		local pinn96 = pinnfn47(Frame3, tbl18.line, 1, 0.3)
		local pinn97 = pinnfn49("AI  -  OFF", 13, tbl18.sub, gothamBlack, Enum.TextXAlignment.Left, Frame3)
		pinn97.Size = UDim2.new(1, -80, 1, 0)
		pinn97.Position = UDim2.fromOffset(14, 0)

		local Frame4 = pinnfn45("Frame", {
			Size = UDim2.fromOffset(48, 24),
			Position = UDim2.new(1, -60, 0.5, -13),
			BackgroundColor3 = tbl18.line,
			BorderSizePixel = 0,
			}, Frame3)

		pinnfn46(Frame4, 12)

		local Frame5 = pinnfn45("Frame", {
			Size = UDim2.fromOffset(18, 18),
			Position = UDim2.new(0, 3, 0.5, -9),
			BackgroundColor3 = tbl18.txt,
			BorderSizePixel = 0,
			}, Frame4)

		pinnfn46(Frame5, 9)

		local tbl19 = {
			Size = UDim2.fromScale(1, 1),
			BackgroundTransparency = 1,
			Text = "",
		}

		pinnfn54 = function()
			pinnfn48(Frame4, 0.16, { BackgroundColor3 = flag19 and tbl18.acc or tbl18.line })
			pinnfn48(Frame5, 0.16, { Position = UDim2.new(0, flag19 and 27 or 3, 0.5, -9) }, Enum.EasingStyle.Back)
			pinnfn48(pinn96, 0.16, { Color = flag19 and tbl18.acc or tbl18.line, Transparency = flag19 and 0 or 0.3 })
			pinn97.Text = flag19 and "AI  -  ON" or "AI  -  OFF"
			pinn97.TextColor3 = flag19 and tbl18.txt or tbl18.sub

			if flag19 then
				pinnfn53(pinn93 and "listening for riddles" or "listening (fallback)", "ok")
			else
				pinnfn53("ai off", "wait")
			end
		end

		pinnfn45("TextButton", tbl19, Frame3).MouseButton1Click:Connect(function()
			flag19 = not flag19
			pinnfn54()
			_G.__RiddlerCfgSet("wordMode", flag19)
		end)
	end
end

do
	local Frame3 = pinnfn45("Frame", {
		Size = UDim2.new(1, 0, 0, 44),
		BackgroundColor3 = tbl18.panel,
		BorderSizePixel = 0,
		LayoutOrder = 3,
		}, Frame2)

	pinnfn46(Frame3, 9)
	local pinn96 = pinnfn47(Frame3, tbl18.line, 1, 0.3)
	local pinn97 = pinnfn49("LISTEN  -  OFF", 13, tbl18.sub, gothamBlack, Enum.TextXAlignment.Left, Frame3)
	pinn97.Size = UDim2.new(1, -80, 1, 0)
	pinn97.Position = UDim2.fromOffset(14, 0)

	local Frame4 = pinnfn45("Frame", {
		Size = UDim2.fromOffset(48, 24),
		Position = UDim2.new(1, -60, 0.5, -12),
		BackgroundColor3 = tbl18.line,
		BorderSizePixel = 0,
		}, Frame3)

	pinnfn46(Frame4, 12)

	local Frame5 = pinnfn45("Frame", {
		Size = UDim2.fromOffset(18, 18),
		Position = UDim2.new(0, 3, 0.5, -9),
		BackgroundColor3 = tbl18.txt,
		BorderSizePixel = 0,
		}, Frame4)

	pinnfn46(Frame5, 9)

	local tbl19 = {
		Size = UDim2.fromScale(1, 1),
		BackgroundTransparency = 1,
		Text = "",
	}

	pinnfn55 = function()
		pinnfn48(Frame4, 0.16, { BackgroundColor3 = flag20 and tbl18.acc or tbl18.line })
		pinnfn48(Frame5, 0.16, { Position = UDim2.new(0, flag20 and 27 or 3, 0.5, -9) }, Enum.EasingStyle.Back)
		pinnfn48(pinn96, 0.16, { Color = flag20 and tbl18.acc or tbl18.line, Transparency = flag20 and 0 or 0.3 })
		pinn97.Text = flag20 and "LISTEN  -  ON" or "LISTEN  -  OFF"
		pinn97.TextColor3 = flag20 and tbl18.txt or tbl18.sub

		if flag20 then
			pinnfn53(pinn93 and "listening for questions" or "listening (fallback)", "ok")
		else
			pinnfn53("not listening", "wait")
		end
	end

	pinnfn45("TextButton", tbl19, Frame3).MouseButton1Click:Connect(function()
		flag20 = not flag20
		pinnfn55()
	end)
end

local pinnfn56, pinnfn57, pinnfn58, Settings2, Frame3

do
	local Frame4, pinn96, answer, TextBox, redeem, pinnfn59, Feed2, pinnfn60, pinnfn61, pinnfn62

	do
		do
			do
				do
					do
						Frame4 = pinnfn45("Frame", {
							Size = UDim2.new(1, 0, 0, 62),
							BackgroundColor3 = tbl18.panel,
							BorderSizePixel = 0,
							LayoutOrder = 4,
							}, Frame2)

						pinnfn46(Frame4, 9)
						pinnfn47(Frame4, tbl18.line, 1, 0.3)

						do
							local question = pinnfn49("QUESTION", 9, tbl18.acc, gothamBlack, Enum.TextXAlignment.Left, Frame4)
							question.Size = UDim2.new(1, -16, 0, 11)
							question.Position = UDim2.fromOffset(11, 5)
						end
					end

					pinn96 = pinnfn49("waiting...", 10, tbl18.sub, gothamMedium, Enum.TextXAlignment.Left, Frame4)
					pinn96.Size = UDim2.new(1, -22, 0, 40)
					pinn96.Position = UDim2.fromOffset(11, 18)
					pinn96.TextWrapped = true
					pinn96.TextYAlignment = Enum.TextYAlignment.Top

					do
						local Frame5 = pinnfn45("Frame", {
							Size = UDim2.new(1, 0, 0, 54),
							BackgroundColor3 = tbl18.panel,
							BorderSizePixel = 0,
							LayoutOrder = 5,
							}, Frame2)

						pinnfn46(Frame5, 9)
						pinnfn47(Frame5, tbl18.acc, 1, 0.35)
						answer = pinnfn49("ANSWER", 9, tbl18.acc, gothamBlack, Enum.TextXAlignment.Left, Frame5)
						answer.Size = UDim2.new(1, -16, 0, 11)
						answer.Position = UDim2.fromOffset(11, 5)

						TextBox = pinnfn45("TextBox", {
							Size = UDim2.new(1, -18, 0, 28),
							Position = UDim2.fromOffset(9, 19),
							BackgroundColor3 = tbl18.input,
							Text = "",
							PlaceholderText = "answer appears here...",
							PlaceholderColor3 = tbl18.sub,
							Font = gothamBlack,
							TextSize = 14,
							TextColor3 = tbl18.acc,
							ClearTextOnFocus = false,
							BorderSizePixel = 0,
							TextXAlignment = Enum.TextXAlignment.Left,
							}, Frame5)
					end
				end

				pinnfn46(TextBox, 7)
				pinnfn47(TextBox, tbl18.line, 1.2, 0.25)

				pinnfn45("UIPadding", {
					PaddingLeft = UDim.new(0, 9),
					PaddingRight = UDim.new(0, 9),
					}, TextBox)

				do
					local Frame5 = pinnfn45("Frame", {
						Size = UDim2.new(1, 0, 0, 33),
						BackgroundTransparency = 1,
						LayoutOrder = 6,
						}, Frame2)

					pinnfn45("UIListLayout", {
						FillDirection = Enum.FillDirection.Horizontal,
						Padding = UDim.new(0, 6),
						SortOrder = Enum.SortOrder.LayoutOrder,
						}, Frame5)

					local copy = pinnfn51("COPY", Frame5)
					copy.Size = UDim2.new(0.33333333333333331, -4, 1, 0)
					copy.LayoutOrder = 1
					local clear = pinnfn51("CLEAR", Frame5)
					clear.Size = UDim2.new(0.33333333333333331, -4, 1, 0)
					clear.LayoutOrder = 2
					redeem = pinnfn52("REDEEM", Frame5)
					redeem.Size = UDim2.new(0.33333333333333331, -4, 1, 0)
					redeem.LayoutOrder = 3
					redeem.TextColor3 = Color3.fromRGB(0, 0, 0)

					clear.MouseButton1Click:Connect(function()
						TextBox.Text = ""
						pinn96.Text = "waiting..."
						pinn96.TextColor3 = tbl18.sub
						answer.Text = "ANSWER"
						str7 = ""
						pinnfn53(flag20 and "listening for questions" or "not listening", flag20 and "ok" or "wait")
					end)

					copy.MouseButton1Click:Connect(function()
						local pinn97 = pinnfn32(TextBox.Text)
						if pinn97 == "" then
							return
						end
						copy.Text = pinnfn33(pinn97) and "COPIED" or "ERR"

						task.delay(0.7, function()
							if copy.Parent then
								copy.Text = "COPY"
							end
						end)
					end)
				end
			end

			do
				local Frame5

				do
					pinnfn59 = function(arg, arg2, arg3, arg4, arg5)
						local Frame6 = pinnfn45("Frame", {
							Size = UDim2.new(1, 0, 0, 31),
							BackgroundColor3 = tbl18.panel,
							BorderSizePixel = 0,
							LayoutOrder = arg2,
							}, arg)

						pinnfn46(Frame6, 8)
						pinnfn47(Frame6, tbl18.line, 1, 0.3)
						local pinn97 = pinnfn49(arg3, 11, tbl18.sub, gothamBold, Enum.TextXAlignment.Left, Frame6)
						pinn97.Size = UDim2.new(1, -56, 1, 0)
						pinn97.Position = UDim2.fromOffset(13, 0)
						pinn97.TextTruncate = Enum.TextTruncate.AtEnd

						local Frame7 = pinnfn45("Frame", {
							Size = UDim2.fromOffset(36, 18),
							Position = UDim2.new(1, -46, 0.5, -9),
							BackgroundColor3 = tbl18.line,
							BorderSizePixel = 0,
							}, Frame6)

						pinnfn46(Frame7, 9)

						local Frame8 = pinnfn45("Frame", {
							Size = UDim2.fromOffset(14, 14),
							Position = UDim2.new(0, 2, 0.5, -7),
							BackgroundColor3 = tbl18.txt,
							BorderSizePixel = 0,
							}, Frame7)

						pinnfn46(Frame8, 7)
						local TextButton = pinnfn45("TextButton", { Size = UDim2.fromScale(1, 1), BackgroundTransparency = 1, Text = "" }, Frame6)
						local flag24 = arg4

						local function pinnfn63()
							pinnfn48(Frame7, 0.16, { BackgroundColor3 = flag24 and tbl18.acc or tbl18.line })
							pinnfn48(Frame8, 0.16, { Position = UDim2.new(0, flag24 and 20 or 2, 0.5, -7) }, Enum.EasingStyle.Back)
							pinnfn48(pinn97, 0.16, { TextColor3 = flag24 and tbl18.txt or tbl18.sub })
						end

						pinnfn63()

						TextButton.MouseButton1Click:Connect(function()
							flag24 = not flag24
							pinnfn63()

							if arg5 then
								arg5(flag24)
							end
						end)

						return Frame6
					end

					pinnfn59(Frame2, 7, "AUTO REDEEM ANSWER", pinn90, function(arg)
						pinn90 = arg
						_G.__RiddlerCfgSet("autoType", arg)
					end)

					pinnfn59(Frame2, 8, "SECURE ANSWER (1-3)", secure, function(arg)
						secure = arg
						_G.__RiddlerCfgSet("secure", arg)
					end)

					pinnfn59(Frame2, 9, "AUTO COPY ANSWER", autoCopy, function(arg)
						autoCopy = arg
						_G.__RiddlerCfgSet("autoCopy", arg)
					end)

					pinnfn59(Frame2, 10, "OPEN FEED ON HIT", openFeed, function(arg)
						openFeed = arg
						_G.__RiddlerCfgSet("openFeed", arg)
					end)

					do
						local Frame6 = pinnfn45("Frame", {
							Size = UDim2.new(1, 0, 0, 31),
							BackgroundColor3 = tbl18.panel,
							BorderSizePixel = 0,
							LayoutOrder = 11,
							}, Frame2)

						pinnfn46(Frame6, 8)
						pinnfn47(Frame6, tbl18.line, 1, 0.3)
						local model2 = pinnfn49("MODEL", 11, tbl18.sub, gothamBold, Enum.TextXAlignment.Left, Frame6)
						model2.Size = UDim2.fromOffset(56, 31)
						model2.Position = UDim2.fromOffset(11, 0)

						Frame5 = pinnfn45("Frame", {
							Size = UDim2.fromOffset(168, 23),
							Position = UDim2.new(1, -177, 0.5, -11.5),
							BackgroundColor3 = tbl18.input,
							BorderSizePixel = 0,
							}, Frame6)
					end
				end

				pinnfn46(Frame5, 7)

				do
					local tbl19 = { "FASTER", "FAST" }
					local tbl20 = {}

					local function pinnfn63(arg)
						if arg ~= model then
							tbl17 = {}
						end

						model = arg
						_G.__RiddlerCfgSet("model", arg)

						for k, pinn97 in pairs(tbl20) do
							local flag24 = k == arg
							pinnfn48(pinn97, 0.12, { BackgroundColor3 = flag24 and tbl18.acc or tbl18.input })
							pinn97.TextColor3 = flag24 and Color3.fromRGB(255, 255, 255) or tbl18.sub
						end
					end

					for i, pinn97 in ipairs(tbl19) do
						do
							local TextButton = pinnfn45("TextButton", {
								Size = UDim2.new(1 / #tbl19, -2, 1, -2),
								Position = UDim2.new((i - 1) / #tbl19, 1, 0, 1),
								BackgroundColor3 = tbl18.input,
								Text = pinn97,
								Font = gothamBold,
								TextSize = 10,
								TextColor3 = tbl18.sub,
								AutoButtonColor = false,
								BorderSizePixel = 0,
								}, Frame5)

							pinnfn46(TextButton, 6)
							tbl20[pinn97] = TextButton

							TextButton.MouseButton1Click:Connect(function()
								pinnfn63(pinn97)
							end)
						end
					end

					pinnfn63(model)
				end
			end
		end

		do
			local Clear, pinn97

			do
				local pinn98, pinn99

				do
					do
						local pinn100
						Feed2, pinn99, pinn100, pinn98 = pinnfn50("Feed", 348, 392, "SOLVE LOG")
					end
				end

				Feed2.Visible = false
				Feed2.Parent = ScreenGui

				do
					local pinn100 = pinnfn51("X", pinn99)
					pinn100.Size = UDim2.fromOffset(24, 24)
					pinn100.Position = UDim2.new(1, -32, 0.5, -12)
					pinn100.TextSize = 12
					Clear = pinnfn51("Clear", pinn99)
					Clear.Size = UDim2.fromOffset(46, 24)
					Clear.Position = UDim2.new(1, -84, 0.5, -13)
					Clear.TextSize = 10
					pinn97 = pinnfn49("0 solved", 10, tbl18.sub, gothamBold, Enum.TextXAlignment.Right, pinn99)
					pinn97.Size = UDim2.new(0, 62, 1, 0)
					pinn97.Position = UDim2.new(1, -152, 0, 0)
					pinn98.Size = UDim2.new(1, -204, 1, 0)
					pinn98.TextTruncate = Enum.TextTruncate.AtEnd

					pinn100.MouseButton1Click:Connect(function()
						Feed2.Visible = false
					end)
				end
			end

			do
				local ScrollingFrame = pinnfn45("ScrollingFrame", {
					Size = UDim2.new(1, -18, 1, -56),
					Position = UDim2.fromOffset(11, 50),
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					ScrollBarThickness = 3,
					ScrollBarImageColor3 = tbl18.acc,
					ScrollBarImageTransparency = 0.3,
					CanvasSize = UDim2.new(),
					AutomaticCanvasSize = Enum.AutomaticSize.Y,
					ScrollingDirection = Enum.ScrollingDirection.Y,
					}, Feed2)

				pinnfn45("UIListLayout", {
					Padding = UDim.new(0, 6),
					SortOrder = Enum.SortOrder.LayoutOrder,
					}, ScrollingFrame)

				local pinn98 = pinnfn49("waiting for riddles...", 11, tbl18.sub, gothamMedium, Enum.TextXAlignment.Center, ScrollingFrame)
				pinn98.Size = UDim2.new(1, 0, 0, 34)
				pinn98.LayoutOrder = 999
				local tbl19 = {}
				local pinnn34 = 0

				pinnfn60 = function()
					if flag18 then
						Feed2.Position = UDim2.new(0.5, -math.floor(Feed2.AbsoluteSize.X / 2), 0.5, -math.floor(Feed2.AbsoluteSize.Y / 2))
					else
						local position = Main.Position
						Feed2.Position = UDim2.new(position.X.Scale, position.X.Offset - Feed2.AbsoluteSize.X - 10, position.Y.Scale, position.Y.Offset)
					end

					Feed2.Visible = true
				end

				Feed.MouseButton1Click:Connect(function()
					if Feed2.Visible then
						Feed2.Visible = false
					else
						pinnfn60()
					end

					return
				end)

				addRedeemCard = function(arg, arg2)
					if pinn98 then
						pinn98:Destroy()
						pinn98 = nil
					end

					pinnn34 += 1

					local Frame5 = pinnfn45("Frame", {
						Size = UDim2.new(1, -4, 0, 0),
						AutomaticSize = Enum.AutomaticSize.Y,
						BackgroundColor3 = tbl18.panel,
						BorderSizePixel = 0,
						LayoutOrder = -pinnn34,
						}, ScrollingFrame)

					pinnfn46(Frame5, 10)
					pinnfn47(Frame5, tbl18.warn, 1, 0.35)

					pinnfn45("UIPadding", {
						PaddingTop = UDim.new(0, 9),
						PaddingBottom = UDim.new(0, 9),
						PaddingLeft = UDim.new(0, 11),
						PaddingRight = UDim.new(0, 11),
						}, Frame5)

					pinnfn45("UIListLayout", { Padding = UDim.new(0, 5), SortOrder = Enum.SortOrder.LayoutOrder }, Frame5)
					local Frame6 = pinnfn45("Frame", { Size = UDim2.new(1, 0, 0, 13), BackgroundTransparency = 1, LayoutOrder = 1 }, Frame5)
					local pinn99 = pinnfn49(arg2 or "REDEEMING", 8, tbl18.warn, gothamBlack, Enum.TextXAlignment.Left, Frame6)
					pinn99.Size = UDim2.new(0.5, 0, 1, 0)
					local sub = tbl18.sub
					local right = Enum.TextXAlignment.Right
					local pinn100 = pinnfn49(os.date("%H:%M:%S"), 8, sub, gothamMedium, right, Frame6)
					pinn100.Size = UDim2.new(0.5, 0, 1, 0)
					pinn100.Position = UDim2.new(0.5, 0, 0, 0)
					local tbl20 = {}

					for i, pinn101 in ipairs(arg) do
						local Frame7 = pinnfn45("Frame", {
							Size = UDim2.new(1, 0, 0, 22),
							BackgroundColor3 = tbl18.input,
							BorderSizePixel = 0,
							LayoutOrder = 1 + i,
							}, Frame5)

						pinnfn46(Frame7, 6)
						local sub2 = tbl18.sub
						local left = Enum.TextXAlignment.Left
						local pinn102 = pinnfn49(("%d/%d"):format(i, #arg), 9, sub2, gothamBlack, left, Frame7)
						pinn102.Size = UDim2.fromOffset(30, 22)
						pinn102.Position = UDim2.fromOffset(8, 0)
						local pinn103 = pinnfn49(pinn101, 11, tbl18.sub, gothamBlack, Enum.TextXAlignment.Left, Frame7)
						pinn103.Size = UDim2.new(1, -104, 1, 0)
						pinn103.Position = UDim2.fromOffset(45, 0)
						pinn103.TextTruncate = Enum.TextTruncate.AtEnd
						local queued = pinnfn49("queued", 9, tbl18.sub, gothamMedium, Enum.TextXAlignment.Right, Frame7)
						queued.Size = UDim2.fromOffset(58, 22)
						queued.Position = UDim2.new(1, -64, 0, 0)
						tbl20[i] = { code = pinn103, status = queued, frame = Frame7 }
					end

					table.insert(tbl19, Frame5)

					if #tbl19 > 30 then
						local pinn101 = table.remove(tbl19, 1)

						if pinn101 then
							pinn101:Destroy()
						end
					end

					return function(arg3, arg4)
						local pinn101 = tbl20[arg3]

						if not pinn101 then
							return
						end

						if arg4 == "sending" then
							pinn101.status.Text = "sending"
							pinn101.status.TextColor3 = tbl18.warn
							pinn101.code.TextColor3 = tbl18.txt
						elseif arg4 == "sent" then
							pinn101.status.Text = "sent"
							pinn101.status.TextColor3 = tbl18.acc
							pinn101.code.TextColor3 = tbl18.acc
						elseif arg4 == "ok" then
							pinn101.status.Text = "REDEEMED"
							pinn101.status.TextColor3 = tbl18.ok
							pinn101.code.TextColor3 = tbl18.ok
							pinn99.Text = "REDEEMED"
							pinn99.TextColor3 = tbl18.ok
						elseif arg4 == "fail" then
							pinn101.status.Text = "failed"
							pinn101.status.TextColor3 = tbl18.err
							pinn101.code.TextColor3 = tbl18.sub
						elseif arg4 == "skip" then
							pinn101.status.Text = "skipped"
							pinn101.status.TextColor3 = tbl18.sub
						end

						return
					end
				end

				pinnfn61 = function(arg, arg2, arg3, arg4, arg5, arg6)
					if pinn98 then
						pinn98:Destroy()
						pinn98 = nil
					end

					pinnn34 += 1
					pinn97.Text = pinnn34 .. " solved"

					local Frame5 = pinnfn45("Frame", {
						Size = UDim2.new(1, -4, 0, 0),
						AutomaticSize = Enum.AutomaticSize.Y,
						BackgroundColor3 = tbl18.panel,
						BorderSizePixel = 0,
						LayoutOrder = -pinnn34,
						}, ScrollingFrame)

					pinnfn46(Frame5, 10)
					pinnfn47(Frame5, arg2 and tbl18.acc or tbl18.err, 1, 0.35)

					pinnfn45("UIPadding", {
						PaddingTop = UDim.new(0, 9),
						PaddingBottom = UDim.new(0, 9),
						PaddingLeft = UDim.new(0, 11),
						PaddingRight = UDim.new(0, 11),
						}, Frame5)

					pinnfn45("UIListLayout", { Padding = UDim.new(0, 7), SortOrder = Enum.SortOrder.LayoutOrder }, Frame5)
					local Frame6 = pinnfn45("Frame", { Size = UDim2.new(1, 0, 0, 13), BackgroundTransparency = 1, LayoutOrder = 1 }, Frame5)
					local str8 = arg5 == false and (arg6 and "WEB" or "GENERAL") or "CODE"

					if arg4 then
						str8 ..= " *"
					end

					pinnfn49(str8, 8, tbl18.acc, gothamBlack, Enum.TextXAlignment.Left, Frame6).Size = UDim2.new(0.45, 0, 1, 0)
					local pinn99 = pinnfn49
					local str9 = "%s   %.2fs"
					local format = str9.format
					local pinn100 = os.date("%H:%M:%S")
					arg3 = arg3 or 0
					local sub = tbl18.sub
					local right = Enum.TextXAlignment.Right
					local pinn101 = pinn99(format(str9, pinn100, arg3), 8, sub, gothamMedium, right, Frame6)
					pinn101.Size = UDim2.new(0.55, 0, 1, 0)
					pinn101.Position = UDim2.new(0.45, 0, 0, 0)
					local pinn102 = pinnfn49(arg, 11, tbl18.txt, gothamMedium, Enum.TextXAlignment.Left, Frame5)
					pinn102.Size = UDim2.new(1, 0, 0, 0)
					pinn102.AutomaticSize = Enum.AutomaticSize.Y
					pinn102.TextWrapped = true
					pinn102.LayoutOrder = 2

					local TextLabel = pinnfn45("TextLabel", {
						Size = UDim2.new(1, 0, 0, 26),
						BackgroundColor3 = tbl18.input,
						Text = arg2 or "FAILED",
						Font = gothamBlack,
						TextSize = 12,
						TextColor3 = arg2 and tbl18.accHi or tbl18.err,
						BorderSizePixel = 0,
						LayoutOrder = 3,
						TextWrapped = true,
						}, Frame5)

					pinnfn46(TextLabel, 7)
					pinnfn47(TextLabel, arg2 and tbl18.acc or tbl18.err, 1.2, 0.35)
					pinnfn45("UIPadding", { PaddingLeft = UDim.new(0, 6), PaddingRight = UDim.new(0, 6) }, TextLabel)

					if arg2 then
						local Frame7 = pinnfn45("Frame", { Size = UDim2.new(1, 0, 0, 26), BackgroundTransparency = 1, LayoutOrder = 4 }, Frame5)

						pinnfn45("UIListLayout", {
							FillDirection = Enum.FillDirection.Horizontal,
							Padding = UDim.new(0, 6),
							SortOrder = Enum.SortOrder.LayoutOrder,
							}, Frame7)

						local copy = pinnfn51("COPY", Frame7)
						copy.Size = UDim2.new(0.5, -3, 1, 0)
						copy.TextSize = 10
						copy.LayoutOrder = 1

						copy.MouseButton1Click:Connect(function()
							copy.Text = pinnfn33(arg2) and "COPIED" or "ERR"

							task.delay(0.7, function()
								if copy.Parent then
									copy.Text = "COPY"
								end
							end)
						end)

						local redeem2 = pinnfn52("REDEEM", Frame7)
						redeem2.Size = UDim2.new(0.5, -3, 1, 0)
						redeem2.TextSize = 10
						redeem2.LayoutOrder = 2
						redeem2.TextColor3 = Color3.fromRGB(0, 0, 0)

						redeem2.MouseButton1Click:Connect(function()
							redeem2.Text = "..."
							pinnfn30(arg2)
							redeem2.Text = "REDEEM"
						end)
					end

					table.insert(tbl19, Frame5)

					if #tbl19 > 30 then
						local pinn103 = table.remove(tbl19, 1)

						if pinn103 then
							pinn103:Destroy()
						end
					end
				end

				Clear.MouseButton1Click:Connect(function()
					for _, pinn99 in ipairs(tbl19) do
						pinn99:Destroy()
					end

					tbl19 = {}
					pinnn34 = 0
					pinn97.Text = "0 solved"

					if not pinn98 then
						pinn98 = pinnfn49("waiting for riddles...", 11, tbl18.sub, gothamMedium, Enum.TextXAlignment.Center, ScrollingFrame)
						pinn98.Size = UDim2.new(1, 0, 0, 34)
						pinn98.LayoutOrder = 999
					end
				end)
			end
		end

		do
			local tbl19 = {
				["à"] = "A",
				["á"] = "A",
				["â"] = "A",
				["ã"] = "A",
				["ä"] = "A",
				["å"] = "A",
				["À"] = "A",
				["Á"] = "A",
				["Â"] = "A",
				["Ã"] = "A",
				["Ä"] = "A",
				["Å"] = "A",
				["ç"] = "C",
				["Ç"] = "C",
				["è"] = "E",
				["é"] = "E",
				["ê"] = "E",
				["ë"] = "E",
				["È"] = "E",
				["É"] = "E",
				["Ê"] = "E",
				["Ë"] = "E",
				["ì"] = "I",
				["í"] = "I",
				["î"] = "I",
				["ï"] = "I",
				["Ì"] = "I",
				["Í"] = "I",
				["Î"] = "I",
				["Ï"] = "I",
				["ñ"] = "N",
				["Ñ"] = "N",
				["ò"] = "O",
				["ó"] = "O",
				["ô"] = "O",
				["õ"] = "O",
				["ö"] = "O",
				["Ò"] = "O",
				["Ó"] = "O",
				["Ô"] = "O",
				["Õ"] = "O",
				["Ö"] = "O",
				["ù"] = "U",
				["ú"] = "U",
				["û"] = "U",
				["ü"] = "U",
				["Ù"] = "U",
				["Ú"] = "U",
				["Û"] = "U",
				["Ü"] = "U",
			}

			pinnfn62 = function(arg)
				local str8 = tostring(arg or "")

				if str8:find("\195") then
					for k, pinn97 in pairs(tbl19) do
						str8 = str8:gsub(k, pinn97)
					end

					return str8
				end

				return str8
			end
		end
	end

	local Test2, Frame5, pinn97, sample, send

	do
		do
			local function pinnfn63(arg)
				return pinnfn62(arg):gsub("%s*/%s*[sS][eE]?[cC]?%.?%s*$", ""):gsub("%s+per%s+sec[a-zA-Z]*%s*$", ""):gsub("[^%w]", ""):upper()
			end

			pinnfn56 = function(arg, arg2, arg3)
				local pinn98 = pinnfn63(arg)
				if pinn98 == "" then
					return {}
				end
				local tbl19 = {}
				local tbl20 = {}

				local function pinnfn64(arg4, arg5)
					if arg4 == nil then
						return
					end
					local pinn99 = pinnfn63(arg4)
					local flag24 = pinn99 ~= ""

					if flag24 then
						flag24 = #pinn99 >= (arg5 or 2)
					end

					if flag24 and not tbl20[pinn99] and #tbl19 < 3 then
						tbl20[pinn99] = true
						tbl19[#tbl19 + 1] = pinn99
					end
				end

				pinnfn64(pinn98, 1)

				if arg3 then
					pinnfn64(arg3, 1)
				end

				local match, pinn99 = pinn98:match("^(%u+)AND(%d+)$")

				if not match then
					match, pinn99 = pinn98:match("^(%u+)WITH(%d+)$")
				end

				if match and pinn99 and #match >= 4 then
					pinnfn64(match .. pinn99, 2)
				end

				local match2, pinn100, pinn101 = pinn98:match("^(.-)(%d+)XLUCK(.*)$")

				if not match2 then
					match2, pinn100, pinn101 = pinn98:match("^(.-)LUCK(%d+)X(.*)$")

					if match2 then
						pinnfn64(match2 .. pinn100 .. "XLUCK" .. pinn101, 2)
					end
				else
					pinnfn64(match2 .. "LUCK" .. pinn100 .. "X" .. pinn101, 2)
				end

				if match2 then
					pinnfn64(match2 .. pinn100 .. "X" .. pinn101, 2)
				end

				if tostring(arg or ""):find("[\128-\255]") then
					local str8 = tostring(arg):gsub("[\128-\255]", ""):gsub("[^%w]", ""):upper()

					if str8 ~= "" and str8 ~= pinn98 then
						pinnfn64(str8, 2)
					end
				end

				pinnfn64(arg2 or _G.__RiddlerSources[pinn98])
				local riddlerWords = _G.__RiddlerWords and _G.__RiddlerWords[pinn98]

				if riddlerWords and #riddlerWords > 1 then
					if #riddlerWords >= 3 then
						pinnfn64(table.concat(riddlerWords, "", 2))
					end

					pinnfn64(table.concat(riddlerWords, "", 1, #riddlerWords - 1))
					return tbl19
				end

				if pinn98:match("%d+$") then
					return tbl19
				end
				local value = select(2, pinn98:gsub("%a", ""))
				if select(2, pinn98:gsub("%d", "")) > 0 and value <= 2 then
					return tbl19
				end

				if pinn98:sub(-1) == "S" and #pinn98 > 3 then
					pinnfn64(pinn98:sub(1, -2))
				else
					pinnfn64(pinn98 .. "S")
				end

				return tbl19
			end

			local function pinnfn64(arg, arg2, arg3)
				local pinn98 = pinnfn56(arg, arg2, arg3)
				if #pinn98 == 0 then
					pinnfn53("no answer to redeem", "err")
					return false
				end
				local pinn99 = addRedeemCard(pinn98, "SECURE REDEEM")

				if openFeed and not Feed2.Visible then
					pinnfn60()
				end

				task.spawn(function()
					for i, pinn100 in ipairs(pinn98) do
						pinnfn53(("secure %d/%d: %s"):format(i, #pinn98, pinn100), "busy")
						pinn99(i, "sending")
						local pinn101, pinn102 = pinnfn37(pinn100)

						if pinn101 and type(pinn102) == "table" and (pinn102.success or pinn102.Success) then
							pinn99(i, "ok")

							for i2 = i + 1, #pinn98 do
								pinn99(i2, "skip")
							end

							pinnfn53(("redeemed: %s  (%d/%d)"):format(pinn100, i, #pinn98), "ok")
							return
						end

						pinn99(i, pinn101 and "sent" or "fail")

						if i < #pinn98 then
							task.wait(0.6)
						end
					end

					pinnfn53(("secure: tried all %d - %s"):format(#pinn98, table.concat(pinn98, ", ")), "wait")
				end)

				return true
			end

			local function pinnfn65(arg)
				local redeeming = pinnfn63(arg)
				if redeeming == "" then
					pinnfn53("no answer to redeem", "err")
					return false
				end
				pinnfn53("redeeming: " .. redeeming, "busy")
				local pinn98 = addRedeemCard({ redeeming }, "REDEEM")
				pinn98(1, "sending")
				local pinn99, pinn100 = pinnfn37(redeeming)
				local flag24 = pinn99 and type(pinn100) == "table"
				local success = flag24 and (pinn100.success or pinn100.Success) or false

				if pinn99 and not flag24 then
					pinn98(1, "sent")
					pinnfn53("sent: " .. redeeming, "ok")
					return true
				end

				pinn98(1, success and "ok" or "fail")
				pinnfn53(success and "redeemed: " .. redeeming or "redeem failed: " .. tostring(pinn100), success and "ok" or "err")
				return success
			end

			pinnfn30 = function(text)
				TextBox.Text = text
				pinnfn65(text)
			end

			redeem.MouseButton1Click:Connect(function()
				redeem.Text = "..."
				local pinn98 = pinnfn32(TextBox.Text)
				local flag24 = pinn98 == str7
				local pinn99 = flag24 and pinn94 or nil
				flag24 = flag24 and pinn95 or nil

				if secure then
					pinnfn64(pinn98, pinn99, flag24)
				else
					pinnfn65(pinn98)
				end

				redeem.Text = "REDEEM"
			end)

			TextBox.FocusLost:Connect(function(enterPressed)
				if enterPressed then
					pinnfn65(TextBox.Text)
				end
			end)

			pinnfn57 = function(arg, arg2)
				local pinn98 = pinnfn32(pinnfn31(arg))
				if pinn98 == "" then
					return
				end

				if flag23 then
					return
				end

				if not arg2 and not pinnfn43(pinn98) then
					return
				end
				flag23 = true
				pinn96.Text = pinn98
				pinn96.TextColor3 = tbl18.txt
				TextBox.Text = ""
				pinnfn53("thinking...", "busy")

				task.spawn(function()
					local pinn99 = setthreadidentity or setidentity or set_thread_identity
					local setThreadIdentity

					if pinn99 then
						setThreadIdentity = pinn99
					else
						setThreadIdentity = syn and syn.set_thread_identity
					end

					local pinn100 = setThreadIdentity or setthreadcontext

					local function pinnfn66()
						if type(pinn100) == "function" then
							pcall(pinn100, 8)
						end
					end

					pinnfn66()
					local now2 = os.clock()

					local ok, result = pcall(function()
						local pinn101, pinn102, pinn103, pinn104, pinn105, pinn106, pinn107, pinn108, pinn109 = pinnfn39(pinn98)
						local pinnn34 = os.clock() - now2
						pinnfn66()

						if pinn101 then
							TextBox.Text = pinn101
							str7 = pinn101
							TextBox.TextColor3 = pinn104 and tbl18.acc or tbl18.txt
							answer.Text = pinn104 and "ANSWER  (CODE)" or pinn106 and "ANSWER  (CHECKING WEB...)" or pinn105 and "ANSWER  (WEB)" or "ANSWER  (GENERAL)"

							if autoCopy then
								pinnfn33(pinn101)
							end

							pinnfn53(("%s  (%.2fs%s)"):format(pinn101, pinnn34, pinn102 and ", cached" or ""), "ok")

							if pinn108 then
								answer.Text = answer.Text .. "   alt: " .. pinn108
							end

							if pinn90 then
								pinn94 = pinn107
								pinn95 = pinn108

								if secure then
									pinnfn64(pinn101, pinn107, pinn108)
								else
									pinnfn65(pinn101)
								end
							end
						else
							TextBox.Text = ""
							pinnfn53("failed: " .. tostring(pinn103), "err")
						end

						pinnfn61(pinn98, pinn101, pinnn34, pinn102, pinn104, pinn105)

						if openFeed and not Feed2.Visible then
							pinnfn60()
						end

						if pinn106 then
							task.spawn(function()
								local pinn110 = pinnfn40(pinn98, pinn106, pinn101, pinn104, pinn109)
								pinnfn66()

								if pinn110 then
									TextBox.Text = pinn110
									str7 = pinn110
									answer.Text = pinn104 and "ANSWER  (CODE, WEB)" or "ANSWER  (WEB)"

									if autoCopy then
										pinnfn33(pinn110)
									end

									pinnfn53(("%s  (web, was %s)"):format(pinn110, pinn101), "ok")
									pinnfn61(pinn98, pinn110, os.clock() - now2, false, pinn104, true)

									if pinn90 then
										if secure then
											pinnfn64(pinn110)
										else
											pinnfn65(pinn110)
										end
									end
								elseif answer.Text:find("CHECKING") then
									answer.Text = "ANSWER  (WEB)"
								end
							end)
						end
					end)

					flag23 = false

					if not ok then
						pcall(function()
							pinnfn53("error: " .. tostring(result), "err")
						end)
					end
				end)

				return
			end
		end

		do
			pinnfn45("TextButton", {
				Size = UDim2.fromScale(1, 1),
				BackgroundTransparency = 1,
				Text = "",
				}, Frame4).MouseButton1Click:Connect(function()
				local pinn98 = pinnfn32(pinn96.Text)

				if not (pinn98 == "" or pinn98 == "waiting...") then
					tbl17[pinn98] = nil
					tbl17[_G.__RiddlerCacheKey(pinn98)] = nil
					pinnfn57(pinn98, true)
					return
				end

				return
			end)

			pinnfn58 = function(...)
				local pinn98 = table.pack(...)
				local pinn99 = pinnfn31(tostring(... or ""))
				if pinn99 == "" then
					return
				end
				_G.__RiddlerRecent = _G.__RiddlerRecent or {}
				local riddlerRecent = _G.__RiddlerRecent
				local value = select("#", table.unpack(pinn98, 1, pinn98.n))
				local value2 = select(4, table.unpack(pinn98, 1, pinn98.n))
				local value3 = select(5, table.unpack(pinn98, 1, pinn98.n))
				local flag24 = value <= 1 or value2 == "Top" or value3 == 2678001507
				local flag25 = not (value2 == "Top" or value3 == 2678001507) and pinnfn41 and pinnfn41(pinn99)

				if flag24 and #pinn99 <= 300 and not flag25 then
					riddlerRecent[#riddlerRecent + 1] = { t = os.time(), text = pinn99 }

					while #riddlerRecent > 60 do
						table.remove(riddlerRecent, 1)
					end

					local pinn100 = " "
					local str8 = " " .. pinn99:lower():gsub("[^%w]+", " ") .. pinn100
					local pinn101 = pairs
					local riddlerAliases = _G.__RiddlerAliases or {}

					for k, riddlerAliase in pinn101(riddlerAliases) do
						str8 = str8:gsub(" " .. k .. " ", " " .. riddlerAliase .. " ")
					end

					local riddlerFindAnimal = _G.__RiddlerFindAnimal and _G.__RiddlerFindAnimal(pinn99)

					local pinn102, pinn103, pinn104 = ipairs({
						" colou?r",
						" name ",
						" date ",
						" day ",
						" month ",
						" og ",
						" how many ",
						" how much ",
						" exist",
						" plus ",
						" my ",
						" what ",
						" which ",
						" who ",
						" when ",
						" where ",
						" income ",
						" age ",
						" and ",
						" mutation",
						" trait",
						" gen ",
						" generation ",
						" mps ",
						" value ",
						" price ",
						" speed ",
						" tier ",
						" fav ",
						" favo",
						" birthday ",
						" cost ",
						" worth ",
						" count ",
					})

					local flag26 = false

					for _, pinn105 in pinn102, pinn103, pinn104 do
						if str8:find(pinn105, 1) then
							flag26 = true
							break
						end
					end

					local sabClassifyDrop = not flag26 and not riddlerFindAnimal and _G.__SabClassifyDrop

					if sabClassifyDrop then
						local pinn105 = "property"
						sabClassifyDrop = select(2, _G.__SabClassifyDrop(pinn99)) == pinn105
					end

					if sabClassifyDrop then
						flag26 = true
					end

					local flag27 = not flag26

					if flag27 then
						flag27 = str8:find("%d+ %a+ codes? ") or str8:find(" codes? for ", 1) or str8:find(" doing %a+ codes? ") or str8:find(" code ") or str8:find(" codes ")
					end

					if flag27 then
						_G.__RiddlerAnnouncementOnly = pinn99
					end

					if riddlerFindAnimal then
						local str9 = " " .. riddlerFindAnimal:lower():gsub("[^%w]+", " ")
						local pos = str8:find(str9, 1, true)
						local flag28 = (pos and str8:sub(math.max(1, pos - 18), pos) or ""):find("%d") ~= nil
						local str10 = pos and str8:sub(pos + #str9, pos + #str9 + 13) or ""
						local pos2 = str10:find("^s? codes? ") ~= nil or str10:find("^ codes? ") ~= nil or str8:find(" doing ", 1, true) or str8:find(" giv", 1, true) or str8:find(" stock", 1, true) or str8:find(" prize", 1, true) or str8:find(" reward", 1, true) or str8:find(" code for ", 1, true) or str8:find(" code is for ", 1, true) or str8:find(" codes for ", 1, true) or str8:find(" riddle for ", 1, true) or str8:find(" riddle is for ", 1, true) or str8:find(" win ", 1, true) or str8:find(" winner", 1, true) or str8:find(" for a ", 1, true) or str8:find(" get a ", 1, true) or str8:find(" gets a ", 1, true) or str8:find(" free ", 1, true) or str8:find(" drop", 1, true)

						if not pos2 then
							pos2 = not flag26

							if pos2 then
								pos2 = str8:find(" next code is ", 1, true) or str8:find(" this code is ", 1, true) or str8:find(" code is the ", 1, true)
							end
						end

						local flag29 = _G.__SabClassifyDrop and _G.__SabClassifyDrop(pinn99) == "riddle"
						local str11 = riddlerFindAnimal:lower()
						local pos3 = str11:find(" pet", 1, true) or str11:find(" egg", 1, true) or str11:find("^egg")

						if flag28 or pos2 then
							_G.__RiddlerPrize = { name = riddlerFindAnimal, text = pinn99, t = os.time(), prize = true }

							if not flag26 then
								_G.__RiddlerAnnouncementOnly = pinn99
							end
						elseif not flag29 and not pos3 and pinn99:find("%d") then
							_G.__RiddlerSubject = { name = riddlerFindAnimal, text = pinn99, t = os.time(), prize = false }
						end
					end
				end

				if _G.__RiddlerAnnouncementOnly == pinn99 then
					_G.__RiddlerAnnouncementOnly = nil
					pinn96.Text = pinn99
					pinn96.TextColor3 = tbl18.sub
					pinnfn53("prize noted: " .. tostring(_G.__RiddlerPrize and _G.__RiddlerPrize.name), "ok")
					return
				end

				pinn96.Text = pinn99
				pinn96.TextColor3 = tbl18.sub

				if pinn91 and not flag20 and pinnfn42(pinn99) then
					flag20 = true
					pinnfn55()
					pinnfn53("auto-listen armed", "ok")
				end

				if not flag20 then
					return
				end
				local pinn100 = _G.__SabClassifyDrop(pinn99)

				if _G.__RiddlerDuo and _G.__RdmDuo then
					if pinn100 == "code" then
						_G.__SabDropClaim = { text = pinn99, kind = "code", at = os.clock() }
						pinnfn53("typed code - left to the redeemer", "wait")
						return
					end

					if pinn100 == "riddle" then
						_G.__SabDropClaim = { text = pinn99, kind = "riddle", at = os.clock() }
					end
				end

				local flag26, pinn101 = pinnfn41(pinn99)

				if flag26 then
					flag26 = not (pinn100 == "riddle" and tostring(pinn101):find("code", 1, true))
				end

				if flag26 then
					pinnfn53("ignored system phrase: " .. tostring(pinn101), "wait")
					return
				end

				if not pinnfn43(pinn99) then
					return
				end
				pinn96.TextColor3 = tbl18.txt
				if not flag19 then
					pinnfn53("question caught - AI is OFF", "wait")
					return
				end
				pinnfn57(pinn99, true)
			end

			do
				local pinn98
				Test2, pinn98 = pinnfn50("Test", 300, 214, "TEST SENDER")
				Test2.Visible = false
				Test2.Parent = ScreenGui
				local pinn99 = pinnfn51("X", pinn98)
				pinn99.Size = UDim2.fromOffset(22, 22)
				pinn99.Position = UDim2.new(1, -28, 0.5, -11)
				pinn99.TextSize = 12

				pinn99.MouseButton1Click:Connect(function()
					Test2.Visible = false
				end)
			end
		end

		do
			Frame5 = pinnfn45("Frame", {
				Size = UDim2.new(1, -24, 1, -58),
				Position = UDim2.fromOffset(12, 50),
				BackgroundTransparency = 1,
				}, Test2)

			pinnfn45("UIListLayout", {
				Padding = UDim.new(0, 8),
				SortOrder = Enum.SortOrder.LayoutOrder,
				}, Frame5)

			do
				local Frame6 = pinnfn45("Frame", {
					Size = UDim2.new(1, 0, 0, 54),
					BackgroundColor3 = tbl18.panel,
					BorderSizePixel = 0,
					LayoutOrder = 1,
					}, Frame5)

				pinnfn46(Frame6, 9)
				pinnfn47(Frame6, tbl18.line, 1, 0.3)
				local fakeRiddle = pinnfn49("FAKE RIDDLE", 9, tbl18.acc, gothamBlack, Enum.TextXAlignment.Left, Frame6)
				fakeRiddle.Size = UDim2.new(1, -16, 0, 13)
				fakeRiddle.Position = UDim2.fromOffset(11, 6)

				pinn97 = pinnfn45("TextBox", {
					Size = UDim2.new(1, -18, 0, 26),
					Position = UDim2.fromOffset(9, 20),
					BackgroundColor3 = tbl18.input,
					Text = "",
					PlaceholderText = "type a riddle to test...",
					PlaceholderColor3 = tbl18.sub,
					Font = gothamBlack,
					TextSize = 12,
					TextColor3 = tbl18.txt,
					ClearTextOnFocus = false,
					BorderSizePixel = 0,
					TextXAlignment = Enum.TextXAlignment.Left,
					}, Frame6)
			end
		end

		pinnfn46(pinn97, 7)
		pinnfn45("UIPadding", { PaddingLeft = UDim.new(0, 9), PaddingRight = UDim.new(0, 9) }, pinn97)
		pinnfn47(pinn97, tbl18.line, 1.2, 0.25)

		do
			local Frame6 = pinnfn45("Frame", {
				Size = UDim2.new(1, 0, 0, 34),
				BackgroundTransparency = 1,
				LayoutOrder = 2,
				}, Frame5)

			sample = pinnfn51("SAMPLE", Frame6)
			sample.Size = UDim2.new(0.4, -4, 1, 0)
			send = pinnfn52("SEND", Frame6)
		end
	end

	do
		local pinn98

		do
			send.Size = UDim2.new(0.6, -4, 1, 0)
			send.Position = UDim2.new(0.4, 4, 0, 0)
			pinn98 = pinnfn49("", 10, tbl18.sub, gothamMedium, Enum.TextXAlignment.Left, Frame5)
			pinn98.Size = UDim2.new(1, -4, 0, 14)
			pinn98.LayoutOrder = 3

			do
				local pinn99 = pinnfn49("fires through the same handler as a real\nnotification - nothing leaves the client", 9, tbl18.sub, gothamMedium, Enum.TextXAlignment.Left, Frame5)
				pinn99.Size = UDim2.new(1, -4, 0, 26)
				pinn99.LayoutOrder = 4
				pinn99.TextWrapped = true
			end
		end

		local tbl19 = {
			"Riddle: the candy mutation plus my age plus my name",
			"Riddle: the divine mutation plus the cursed mutation",
			"Riddle: this month plus meowl plus jandel",
			"Riddle: the mutation that is running now",
			"Riddle: the month sab released, year sab released, mutation that is running now",
			"Riddle: what event are we in right now plus 67",
			"Riddle: my name plus the luck that is running",
			"Riddle: the first mutation in the game plus the one we are in right now",
			"Riddle: my favorite color plus 67 plus my favorite brainrot",
			"Riddle: my birthday month plus my age",
			"Riddle: my country plus my favorite brainrot",
			"Riddle: who is my top programmer",
			"Riddle: my top programmer plus my favorite color",
			"Riddle: what is my real full name in real life",
			"Riddle: my real life name plus 67",
			"Riddle: who is my friend that is a youtuber and has a food in his name",
			"Riddle: who won the admin war",
			"Riddle: my first original game plus my age",
			"Riddle: the month the ninth mutation came out",
			"Riddle: the month and the day the ninth mutation came out",
			"Riddle: the month the day the year the ninth mutation came out",
			"Riddle: the month plus the day, and the year the ninth mutation came out plus 67",
			"Riddle: when did i add lucky blocks",
			"Riddle: the month the day and the year the first mutation came out",
			"Riddle: the rarest og",
			"Riddle: the best og obtainable",
			"Riddle: the 2nd best og that is obtainable",
			"Riddle: whats the rarest brainrot",
			"Riddle: my name plus 67 plus the best og obtainable no robux",
			"Riddle: what event did pot pumpkin come out in",
			"Riddle: where did griffin come from",
			"Riddle: where did noobini santanini come from",
			"Riddle: what craft did the la supreme come from",
			"Riddle: the machine griffin came from plus my country",
			"Riddle: the first trait i ever added",
			"Riddle: the newest mutation plus the current month",
			"Riddle: the highest income brainrot in the game",
			"Riddle: the cheapest secret brainrot",
			"Riddle: the rarest limited quantity brainrot plus my age",
			"Riddle: what gear comes with rebirth 11",
			"Riddle: how many gold brainrots does the rainbow machine need",
			"Riddle: team number 1 plus my top programmer",
			"Riddle: america plus the rarest og in the game",
			"Riddle: brazil plus my name",
			"Riddle: who won the 2026 world cup",
			"Riddle: who won the 2026 world cup plus my favorite color and my name",
			"Riddle: what is the capital of France",
			"Riddle: am i gay?",
			"Riddle: the best mutation",
			"Riddle: my hardest event",
			"Riddle: the strongest brainrot",
		}

		local function pinnfn63(arg)
			local fired = pinnfn32(arg)

			if fired == "" then
				pinn98.Text = "nothing to send"
				pinn98.TextColor3 = tbl18.err
				return
			end

			if not flag19 then
				pinn98.Text = "AI is OFF - turn it on first"
				pinn98.TextColor3 = tbl18.warn
				return
			end

			if not flag20 and not pinn91 then
				pinn98.Text = "LISTEN and AUTO LISTEN are both off"
				pinn98.TextColor3 = tbl18.warn
				return
			end

			if pinn93 and not flag22 and typeof(firesignal) == "function" then
				local ok = pcall(firesignal, pinn93.OnClientEvent, fired, 5.5, "Sounds.Sfx.Blop", "Top", 2678001507)
				pinn98.Text = ok and "fired: " .. fired or "firesignal failed"
				pinn98.TextColor3 = ok and tbl18.ok or tbl18.err
				if ok then
					return
				end
			end

			local ok = pcall(pinnfn58, fired, 5.5, "Sounds.Sfx.Blop", "Top", 2678001507)
			pinn98.Text = ok and "local test: " .. fired or "handler error"
			pinn98.TextColor3 = ok and tbl18.ok or tbl18.err
		end

		send.MouseButton1Click:Connect(function()
			pinnfn63(pinn97.Text)
		end)

		pinn97.FocusLost:Connect(function(enterPressed)
			if enterPressed then
				pinnfn63(pinn97.Text)
			end
		end)

		sample.MouseButton1Click:Connect(function()
			pinn97.Text = tbl19[math.random(#tbl19)]
		end)
	end

	do
		Test.MouseButton1Click:Connect(function()
			if Test2.Visible then
				Test2.Visible = false
				return
			end

			if flag18 then
				Test2.Position = UDim2.new(0.5, -math.floor(Test2.AbsoluteSize.X / 2), 0.5, -math.floor(Test2.AbsoluteSize.Y / 2))
			else
				local position = Main.Position
				Test2.Position = UDim2.new(position.X.Scale, position.X.Offset - Test2.AbsoluteSize.X - 10, position.Y.Scale, position.Y.Offset + Main.AbsoluteSize.Y - Test2.AbsoluteSize.Y)
			end

			Test2.Visible = true
		end)

		do
			local pinn98
			Settings2, pinn98 = pinnfn50("Settings", 300, 198, "SETTINGS")
			Settings2.Visible = false
			Settings2.Parent = ScreenGui
			local pinn99 = pinnfn51("X", pinn98)
			pinn99.Size = UDim2.fromOffset(22, 22)
			pinn99.Position = UDim2.new(1, -28, 0.5, -11)
			pinn99.TextSize = 12

			pinn99.MouseButton1Click:Connect(function()
				Settings2.Visible = false
			end)
		end
	end

	Frame3 = pinnfn45("Frame", {
		Size = UDim2.new(1, -20, 1, -58),
		Position = UDim2.fromOffset(10, 50),
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		}, Settings2)

	pinnfn45("UIListLayout", {
		Padding = UDim.new(0, 5),
		SortOrder = Enum.SortOrder.LayoutOrder,
		}, Frame3)

	pinnfn59(Frame3, 1, "AUTO LISTEN", pinn91, function(arg)
		pinn91 = arg
		_G.__RiddlerCfgSet("autoRedeem", arg)
	end)

	pinnfn59(Frame3, 2, "IGNORE SYSTEM PHRASES", pinn92, function(arg)
		pinn92 = arg
		_G.__RiddlerCfgSet("ignoreSystem", arg)
	end)

	do
		local pinn98 = pinnfn59(Frame3, 3, "DUO MODE (WITH REDEEMER)", _G.__RiddlerDuo, function(riddlerDuo)
			_G.__RiddlerDuo = riddlerDuo
			_G.__RiddlerCfgSet("duo", riddlerDuo)

			if _G.__SabDuoSync then
				_G.__SabDuoSync()
			end
		end)

		local pinn99 = pinnfn49("0/2", 10, tbl18.sub, gothamBold, Enum.TextXAlignment.Right, pinn98)
		pinn99.Size = UDim2.fromOffset(30, 31)
		pinn99.Position = UDim2.new(1, -84, 0, 0)

		for _, child in ipairs(pinn98:GetChildren()) do
			if child:IsA("TextLabel") and child ~= pinn99 then
				child.Size = UDim2.new(1, -100, 1, 0)
			end
		end

		local function riddler()
			local pinnn34 = (_G.__RiddlerDuo and 1 or 0) + (_G.__RdmDuo and 1 or 0)
			pinn99.Text = pinnn34 .. "/2"
			pinn99.TextColor3 = pinnn34 == 2 and tbl18.acc or pinnn34 == 1 and (tbl18.warn or tbl18.sub) or tbl18.sub
		end

		riddler()
		_G.__SabDuoRefresh = _G.__SabDuoRefresh or {}
		_G.__SabDuoRefresh.riddler = riddler

		_G.__SabDuoSync = function()
			local pinn100 = pairs
			local sabDuoRefresh = _G.__SabDuoRefresh or {}

			for _, pinn101 in pinn100(sabDuoRefresh) do
				pcall(pinn101)
			end
		end

		_G.__SabDuoSync()

		task.spawn(function()
			while pinn98.Parent do
				riddler()
				task.wait(1)
			end
		end)
	end
end

local tbl19, pinnfn59, pinnfn60, pinnfn61, pinnfn62, AutoBuy, Frame4, pinnfn63

do
	do
		local pinn96

		do
			do
				local tbl20, pinnfn64

				do
					do
						local Frame5

						do
							Frame5 = pinnfn45("Frame", {
								Size = UDim2.new(1, 0, 0, 31),
								BackgroundColor3 = tbl18.panel,
								BorderSizePixel = 0,
								LayoutOrder = 4,
								}, Frame3)

							pinnfn46(Frame5, 8)
							pinnfn47(Frame5, tbl18.line, 1, 0.3)

							do
								local autoBuy = pinnfn49("AUTO BUY", 11, tbl18.sub, gothamBold, Enum.TextXAlignment.Left, Frame5)
								autoBuy.Size = UDim2.new(1, -70, 1, 0)
								autoBuy.Position = UDim2.fromOffset(13, 0)
							end
						end

						local open = pinnfn51("OPEN", Frame5)
						open.Size = UDim2.fromOffset(52, 22)
						open.Position = UDim2.new(1, -60, 0.5, -11)
						open.TextSize = 11

						open.MouseButton1Click:Connect(function()
							if _G.__RiddlerOpenAutoBuy then
								_G.__RiddlerOpenAutoBuy()
							end
						end)
					end

					Settings.MouseButton1Click:Connect(function()
						if Settings2.Visible then
							Settings2.Visible = false
							return
						end

						if flag18 and not Frame3:FindFirstChild("UiSizeRow") then
							Settings2.Size = UDim2.fromOffset(300, 198)

							local Frame5 = pinnfn45("Frame", {
								Name = "UiSizeRow",
								Size = UDim2.new(1, 0, 0, 31),
								BackgroundColor3 = tbl18.panel,
								BorderSizePixel = 0,
								LayoutOrder = 3,
								}, Frame3)

							pinnfn46(Frame5, 8)
							pinnfn47(Frame5, tbl18.line, 1, 0.3)
							local uiSize = pinnfn49("UI SIZE", 11, tbl18.sub, gothamBold, Enum.TextXAlignment.Left, Frame5)
							uiSize.Size = UDim2.fromOffset(70, 31)
							uiSize.Position = UDim2.fromOffset(11, 0)

							local Frame6 = pinnfn45("Frame", {
								Size = UDim2.fromOffset(168, 23),
								Position = UDim2.new(1, -177, 0.5, -11.5),
								BackgroundColor3 = tbl18.input,
								BorderSizePixel = 0,
								}, Frame5)

							pinnfn46(Frame6, 7)
							local tbl21 = {}

							local function pinnfn65(arg, arg2)
								for k, pinn97 in pairs(tbl21) do
									local flag24 = k == arg
									pinnfn48(pinn97, 0.12, { BackgroundColor3 = flag24 and tbl18.acc or tbl18.input })
									pinn97.TextColor3 = flag24 and Color3.fromRGB(255, 255, 255) or tbl18.sub
								end

								if arg2 then
									return
								end
								_G.__RiddlerCfgSet("uiSize", arg)
								local scale = 0.65 * _G.__RiddlerUiMult()

								for _, descendant in ipairs(ScreenGui:GetDescendants()) do
									if descendant:IsA("UIScale") and descendant.Name == "WinScale" then
										descendant.Scale = scale
									end
								end

								Main.Position = UDim2.new(1, -math.floor(pinnn32 * scale) - 8, 0.5, -math.floor(pinnn33 * scale / 2))
							end

							for i, pinn97 in ipairs({ "BIG", "MEDIUM", "SMALL" }) do
								local TextButton = pinnfn45("TextButton", {
									Size = UDim2.new(0.33333333333333331, -2, 1, -2),
									Position = UDim2.new((i - 1) / 3, 1, 0, 1),
									BackgroundColor3 = tbl18.input,
									Text = pinn97,
									Font = gothamBold,
									TextSize = 9,
									TextColor3 = tbl18.sub,
									AutoButtonColor = false,
									BorderSizePixel = 0,
									}, Frame6)

								pinnfn46(TextButton, 6)
								tbl21[pinn97] = TextButton

								TextButton.MouseButton1Click:Connect(function()
									pinnfn65(pinn97)
								end)
							end

							pinnfn65(_G.__RiddlerCfgStr("uiSize", "MEDIUM"), true)
						end

						if flag18 then
							Settings2.Position = UDim2.new(0.5, -math.floor(Settings2.AbsoluteSize.X / 2), 0.5, -math.floor(Settings2.AbsoluteSize.Y / 2))
						else
							local position = Main.Position
							Settings2.Position = UDim2.new(position.X.Scale, position.X.Offset - Settings2.AbsoluteSize.X - 10, position.Y.Scale, position.Y.Offset)
						end

						Settings2.Visible = true
					end)

					tbl19 = {}

					do
						local tbl21 = { "buy", "purchase", "claim", "steal", "collect" }
						tbl20 = {}

						pinnfn64 = function(arg)
							local str8 = tostring(arg.Name)
							local pinn97 = " "
							local str9 = (str8 .. " " .. tostring(arg.ActionText) .. pinn97 .. tostring(arg.ObjectText)):lower()

							for _, pinn98 in ipairs(tbl21) do
								if str9:find(pinn98, 1, true) then
									return true
								end
							end


							return false
						end
					end
				end

				do
					do
						local function pinnfn65(descendant)
							if descendant:IsA("ProximityPrompt") then
								tbl20[descendant] = true
							end
						end

						for _, descendant in ipairs(pinn88:GetDescendants()) do
							pinnfn65(descendant)
						end

						tbl19[#tbl19 + 1] = pinn88.DescendantAdded:Connect(pinnfn65)
					end

					tbl19[#tbl19 + 1] = pinn88.DescendantRemoving:Connect(function(descendant)
						tbl20[descendant] = nil
					end)

					do
						local function pinnfn65(arg)
							local parent = arg.Parent
							if not parent then
								return nil
							end

							if parent:IsA("Attachment") then
								return parent.WorldPosition
							end

							if parent:IsA("BasePart") then
								return parent.Position
							end
							local model2 = parent:FindFirstAncestorOfClass("Model")

							if model2 then
								local primaryPart = model2.PrimaryPart or model2:FindFirstChildWhichIsA("BasePart", true)
								if primaryPart then
									return primaryPart.Position
								end
							end
						end

						pinnfn59 = function()
							local character = localPlayer.Character
							character = character and character:FindFirstChild("HumanoidRootPart")
							if not character then
								return nil, math.huge
							end
							local huge = math.huge
							local pinn97 = nil

							for k in pairs(tbl20) do
								if k.Parent and k.Enabled and pinnfn64(k) then
									local pinn98 = pinnfn65(k)

									if pinn98 then
										local magnitude = (character.Position - pinn98).Magnitude

										if magnitude < huge then
											huge = magnitude
											pinn97 = k
										end
									end
								end
							end

							return pinn97, huge
						end
					end
				end
			end

			pinnfn60 = function(arg)
				if not (arg and arg.Parent and arg.Enabled) then
					return false
				end

				if type(fireproximityprompt) == "function" then
					return (pcall(fireproximityprompt, arg))
				end

				return (pcall(function()
					arg:InputHoldBegin()
					task.wait(math.max(arg.HoldDuration, 0.05) + 0.05)
					arg:InputHoldEnd()
				end))
			end

			pinn96 = nil

			do
				local ok, result = pcall(require, pinn86.Datas:FindFirstChild("Animals"))

				if ok then
					pinn96 = result
				end
			end
		end

		do
			do
				pinnfn61 = function(arg)
					local num = tonumber(arg)
					if not num then
						return tostring(arg or "-- -")
					end
					local pinnn34 = math.abs(num)

					for _, pinn97 in ipairs({ { 1e12, "T" }, { 1e9, "B" }, { 1000000, "M" }, { 1000, "K" } }) do
						if pinn97[1] <= pinnn34 then
							local pinnn35 = num / pinn97[1]
							return string.format(pinnn35 >= 100 and "%.0f%s" or "%.1f%s", pinnn35, pinn97[2])
						end
					end

					return num % 1 == 0 and tostring(math.floor(num)) or string.format("%.1f", num)
				end

				do
					local function pinnfn64(arg)
						return (tostring(arg or ""):gsub("%s*%$?[%d%.,]+%s*[KMBTQaqs]*%s*$", ""):gsub("^%s+", ""):gsub("%s+$", ""))
					end

					local function pinnfn65(arg)
						if type(pinn96) ~= "table" or not arg or arg == "" then
							return nil
						end

						if type(pinn96[arg]) == "table" then
							return pinn96[arg]
						end
						local str8 = arg:lower()

						for _, pinn97 in pairs(pinn96) do
							local flag24 = type(pinn97) == "table"

							if flag24 then
								local pinn98 = "string"
								flag24 = type(pinn97.DisplayName) == pinn98
							end

							if flag24 and pinn97.DisplayName:lower() == str8 then
								return pinn97
							end
						end
					end

					pinnfn62 = function(arg)
						local pinn97 = pinnfn64(arg.ObjectText ~= "" and arg.ObjectText or arg.ActionText ~= "" and arg.ActionText or arg.Name)
						local model2 = arg.Parent and arg.Parent:FindFirstAncestorOfClass("Model")
						local rarity = pinnfn65(pinn97)

						if not rarity and model2 then
							rarity = pinnfn65(model2.Name)
						end

						local displayName = rarity and rarity.DisplayName or pinn97
						local generation = rarity and (rarity.Generation or rarity.Income)
						rarity = rarity and rarity.Rarity
						local pinn98 = nil
						local attribute = nil

						if model2 then
							attribute = model2:GetAttribute("Mutation") or model2:GetAttribute("MutationName")
							local attribute2 = model2:GetAttribute("Traits") or model2:GetAttribute("Trait")
							pinn98 = nil

							if type(attribute2) == "string" then
								pinn98 = attribute2
							end
						end

						return displayName, generation, rarity, attribute, pinn98
					end
				end
			end

			do
				local pinn97
				AutoBuy, pinn97 = pinnfn50("AutoBuy", 264, 286, "AUTO BUY")
				AutoBuy.Visible = false
				AutoBuy.Parent = ScreenGui
				local pinn98 = pinnfn51("X", pinn97)
				pinn98.Size = UDim2.fromOffset(22, 22)
				pinn98.Position = UDim2.new(1, -28, 0.5, -11)
				pinn98.TextSize = 12

				pinn98.MouseButton1Click:Connect(function()
					AutoBuy.Visible = false
				end)
			end
		end
	end

	Frame4 = pinnfn45("Frame", {
		Size = UDim2.new(1, -20, 1, -58),
		Position = UDim2.fromOffset(10, 50),
		BackgroundTransparency = 1,
		}, AutoBuy)

	pinnfn45("UIListLayout", { Padding = UDim.new(0, 6), SortOrder = Enum.SortOrder.LayoutOrder }, Frame4)

	do
		local Frame5 = pinnfn45("Frame", {
			Size = UDim2.new(1, 0, 0, 44),
			BackgroundColor3 = tbl18.panel,
			BorderSizePixel = 0,
			LayoutOrder = 1,
			}, Frame4)

		pinnfn46(Frame5, 9)
		local pinn96 = pinnfn47(Frame5, tbl18.line, 1, 0.3)
		local pinn97 = pinnfn49("AUTO BUY  -  OFF", 13, tbl18.sub, gothamBlack, Enum.TextXAlignment.Left, Frame5)
		pinn97.Size = UDim2.new(1, -80, 1, 0)
		pinn97.Position = UDim2.fromOffset(14, 0)

		local Frame6 = pinnfn45("Frame", {
			Size = UDim2.fromOffset(48, 24),
			Position = UDim2.new(1, -60, 0.5, -13),
			BackgroundColor3 = tbl18.line,
			BorderSizePixel = 0,
			}, Frame5)

		pinnfn46(Frame6, 13)

		local Frame7 = pinnfn45("Frame", {
			Size = UDim2.fromOffset(18, 18),
			Position = UDim2.new(0, 3, 0.5, -9),
			BackgroundColor3 = tbl18.txt,
			BorderSizePixel = 0,
			}, Frame6)

		pinnfn46(Frame7, 9)

		local tbl20 = {
			Size = UDim2.fromScale(1, 1),
			BackgroundTransparency = 1,
			Text = "",
		}

		pinnfn63 = function()
			pinnfn48(Frame6, 0.16, { BackgroundColor3 = flag21 and tbl18.acc or tbl18.line })
			pinnfn48(Frame7, 0.16, { Position = UDim2.new(0, flag21 and 27 or 3, 0.5, -9) }, Enum.EasingStyle.Back)
			pinnfn48(pinn96, 0.16, { Color = flag21 and tbl18.acc or tbl18.line, Transparency = flag21 and 0 or 0.3 })
			pinn97.Text = flag21 and "AUTO BUY  -  ON" or "AUTO BUY  -  OFF"
			pinn97.TextColor3 = flag21 and tbl18.txt or tbl18.sub
		end

		pinnfn45("TextButton", tbl20, Frame5).MouseButton1Click:Connect(function()
			flag21 = not flag21
			pinnfn63()
		end)
	end
end

do
	local pinnfn64, pinn96, pinn97, pinn98, pinn99, pinn100

	do
		local pinnfn65

		do
			do
				local Frame5 = pinnfn45("Frame", {
					Size = UDim2.new(1, 0, 0, 28),
					BackgroundColor3 = tbl18.panel,
					BorderSizePixel = 0,
					LayoutOrder = 2,
					}, Frame4)

				pinnfn46(Frame5, 9)
				pinnfn47(Frame5, tbl18.line, 1, 0.3)

				local Frame6 = pinnfn45("Frame", {
					Size = UDim2.fromOffset(7, 7),
					Position = UDim2.new(0, 11, 0.5, -3.5),
					BackgroundColor3 = tbl18.sub,
					BorderSizePixel = 0,
					}, Frame5)

				pinnfn46(Frame6, 4)
				local idle = pinnfn49("idle", 11, tbl18.sub, gothamBold, Enum.TextXAlignment.Left, Frame5)
				idle.Size = UDim2.new(1, -32, 1, 0)
				idle.Position = UDim2.fromOffset(26, 0)
				idle.TextTruncate = Enum.TextTruncate.AtEnd

				pinnfn64 = function(text, arg)
					idle.Text = text
					local ok = arg == "ok" and tbl18.ok
					local warn_

					if ok then
						warn_ = ok
					else
						warn_ = arg == "warn" and tbl18.warn
					end

					local err = warn_ or arg == "err" and tbl18.err or tbl18.sub
					idle.TextColor3 = err
					Frame6.BackgroundColor3 = err
				end
			end

			do
				local Frame5 = pinnfn45("Frame", {
					Size = UDim2.new(1, 0, 0, 120),
					BackgroundColor3 = tbl18.panel,
					BorderSizePixel = 0,
					LayoutOrder = 3,
					}, Frame4)

				pinnfn46(Frame5, 9)
				pinnfn47(Frame5, tbl18.line, 1, 0.3)
				local nearestBuyable = pinnfn49("NEAREST BUYABLE", 9, tbl18.acc, gothamBlack, Enum.TextXAlignment.Left, Frame5)
				nearestBuyable.Size = UDim2.new(1, -20, 0, 13)
				nearestBuyable.Position = UDim2.fromOffset(11, 7)

				pinnfn65 = function(arg, arg2)
					local pinn101 = pinnfn49("", 11, arg2 or tbl18.sub, gothamBold, Enum.TextXAlignment.Left, Frame5)
					pinn101.Size = UDim2.new(1, -20, 0, 15)
					pinn101.Position = UDim2.fromOffset(11, arg)
					pinn101.TextTruncate = Enum.TextTruncate.AtEnd
					return pinn101
				end
			end
		end

		pinn96 = pinnfn65(24, tbl18.txt)
		pinn97 = pinnfn65(41, tbl18.acc)
		pinn98 = pinnfn65(58)
		pinn99 = pinnfn65(75)
		pinn100 = pinnfn65(92)
	end

	local pinn101 = pinnfn49("", 9, tbl18.sub, gothamMedium, Enum.TextXAlignment.Left, Frame4)
	pinn101.Size = UDim2.new(1, 0, 0, 12)
	pinn101.LayoutOrder = 4

	local function pinnfn65()
		pinn96.Text = "Name: -- -"
		pinn97.Text = "Income: -- - /sec"
		pinn98.Text = "Rarity: -- -"
		pinn99.Text = "Mutation: -- -"
		pinn100.Text = "Traits: -- -"
		pinn101.Text = "Distance: -- -"
	end

	pinnfn65()
	local pinn102 = nil
	local pinn103 = 0
	local pinnn34 = 0

	tbl19[#tbl19 + 1] = pinn87.Heartbeat:Connect(function(deltaTime)
		pinnn34 += deltaTime
		if pinnn34 < 0.2 then
			return
		end
		pinnn34 = 0
		if not flag21 and not AutoBuy.Visible then
			return
		end
		local pinn104, pinn105 = pinnfn59()

		if not pinn104 then
			pinnfn65()
			pinnfn64(flag21 and "no buy prompt found" or "idle", flag21 and "warn" or nil)
			return
		end

		local pinn106, pinn107, pinn108, pinn109, pinn110 = pinnfn62(pinn104)
		pinn96.Text = "Name: " .. tostring(pinn106 or "-- -")
		pinn97.Text = "Income: " .. pinnfn61(pinn107) .. " /sec"
		pinn98.Text = "Rarity: " .. tostring(pinn108 or "-- -")  --
		pinn99.Text = "Mutation: " .. tostring(pinn109 or "-- -")
		pinn100.Text = "Traits: " .. tostring(pinn110 or "-- -")
		pinn101.Text = string.format("Distance: %.1f studs", pinn105)
		if not flag21 then
			pinnfn64("idle (watching)", nil)
			return
		end

		if pinn105 > (pinn104.MaxActivationDistance or 10) + 2 then
			pinnfn64("move closer to buy", "warn")
			return
		end
		pinnfn64("buying: " .. tostring(pinn106), "ok")

		if pinn104 ~= pinn102 or os.clock() - pinn103 >= 1.2 then
			local now2 = os.clock()
			pinn102 = pinn104
			pinn103 = now2

			task.spawn(function()
				if not pinnfn60(pinn104) and flag21 then
					pinnfn64("prompt failed", "err")
				end
			end)
		end
	end)
end

do
	_G.__RiddlerOpenAutoBuy = function()
		if AutoBuy.Visible then
			AutoBuy.Visible = false
			return
		end

		if flag18 then
			AutoBuy.Position = UDim2.new(0.5, -math.floor(AutoBuy.AbsoluteSize.X / 2), 0.5, -math.floor(AutoBuy.AbsoluteSize.Y / 2))
		else
			local position = Main.Position
			AutoBuy.Position = UDim2.new(position.X.Scale, position.X.Offset - AutoBuy.AbsoluteSize.X - 10, position.Y.Scale, position.Y.Offset)
		end

		AutoBuy.Visible = true
	end

	pinnfn63()

	do
		local tbl20 = {}
		local pinn96 = nil
		local pinnn34 = 0

		local function pinnfn64(...)
			local pinn97 = table.pack(...)
			local str8 = tostring(... or "")
			if #str8 < 8 then
				return
			end
			local now2 = os.clock()
			if str8 == pinn96 and now2 - pinnn34 < 0.25 then
				return
			end
			pinn96 = str8
			pinnn34 = now2
			pcall(pinnfn58, table.unpack(pinn97, 1, pinn97.n))
		end

		pinn93 = pinnfn44()

		if pinn93 then
			Frame.BackgroundColor3 = tbl18.ok
			tbl20[#tbl20 + 1] = pinn93.OnClientEvent:Connect(pinnfn64)
		else
			do
				local pinnn35 = 0

				for _, child in ipairs(pinn89:GetChildren()) do
					if child:IsA("RemoteEvent") or child:IsA("UnreliableRemoteEvent") then
						pinnn35 += 1
						tbl20[#tbl20 + 1] = child.OnClientEvent:Connect(pinnfn64)
						if not (pinnn35 >= 400) then
							continue
						end
					else
						continue
					end

					break
				end

				flag22 = pinnn35 > 0
			end

			Frame.BackgroundColor3 = flag22 and tbl18.warn or tbl18.err
		end

		_G.__RiddlerWarmGen = (_G.__RiddlerWarmGen or 0) + 1

		task.spawn(function()
			if not request_ then
				return
			end
			local riddlerWarmGen = _G.__RiddlerWarmGen
			pcall(pinnfn38)

			while task.wait(600) and _G.__RiddlerWarmGen == riddlerWarmGen do
				pcall(pinnfn38)
			end
		end)

		if getgenv then
			getgenv().StopRiddler = function()
				flag19 = false
				flag21 = false
				_G.__RiddlerWarmGen = (_G.__RiddlerWarmGen or 0) + 1

				for _, pinn97 in ipairs(tbl20) do
					pcall(function()
						pinn97:Disconnect()
					end)
				end

				for _, pinn97 in ipairs(tbl19) do
					pcall(function()
						pinn97:Disconnect()
					end)
				end

				tbl20 = {}
				tbl19 = {}
				_G.__RiddlerOpenAutoBuy = nil

				if ScreenGui then
					ScreenGui:Destroy()
				end

				getgenv().StopRiddler = nil
				return
			end
		end
	end
end

_G.AskRiddle = function(arg)
	pinnfn57(arg, true)
end

_G.RiddlerAnnounce = function(...)
	pinnfn58(...)
end

_G.RiddlerState = function()
	return { listening = flag20, autoListen = pinn91, ai = flag19 }
end

_G.RiddlerSetAutoListen = function(arg)
	pinn91 = arg
end

_G.RiddlerSetListening = function(arg)
	flag20 = arg
	pinnfn55()
end

_G.RiddlerSetAI = function(arg)
	flag19 = arg
	pinnfn54()
end

_G.RiddlerSetIgnoreSystem = function(arg)
	pinn92 = arg
end

_G.RiddlerSetAutoRedeem = function(arg)
	pinn90 = arg
end

_G.RiddlerIsBlacklisted = function(arg)
	return (pinnfn41(arg))
end

_G.RiddlerMatchTrigger = function(arg)
	return pinnfn42(arg)
end

_G.RiddlerVariants = function(arg, arg2, arg3)
	return table.concat(pinnfn56(arg, arg2, arg3), ", ")
end

_G.RiddlerDetectorStatus = function()
	local tbl20 = {}
	local ok, result = pcall(_G.__RiddlerSnapshotNew)
	local pinn96 = pinn86:FindFirstChild("Datas")
	local pinn97 = pinnfn34(pinn96 and pinn96:FindFirstChild("Animals"))
	local pinnn34 = 0

	if type(pinn97) == "table" then
		for k in pairs(pinn97) do
			pinnn34 += 1
		end
	end

	local tbl21 = {}

	if ok and type(result) == "table" then
		for _, pinn98 in ipairs(result) do
			tbl21[#tbl21 + 1] = pinn98.name or tostring(pinn98)
		end
	end

	tbl20[#tbl20 + 1] = ("brainrot: %d live, %d new (%s)"):format(pinnn34, #tbl21, #tbl21 > 0 and table.concat(tbl21, ", ") or "-")
	local ok2, result2 = pcall(_G.__RiddlerSnapshotMeta)
	local tbl22 = {}

	if ok2 and type(result2) == "table" then
		for _, pinn98 in ipairs(result2) do
			tbl22[pinn98.kind] = tbl22[pinn98.kind] or {}
			table.insert(tbl22[pinn98.kind], pinn98.name)
		end
	end

	local datas = pinn86:FindFirstChild("Datas")

	local function pinnfn64(arg)
		local pinn98 = pinnfn34(datas and datas:FindFirstChild(arg))
		local pinnn35 = 0

		if type(pinn98) == "table" then
			for k in pairs(pinn98) do
				pinnn35 += 1
			end
		end

		return pinnn35
	end

	local tbl23 = {}
	local tbl24 = {}
	local Traits = pinnfn64("Traits")
	tbl24[1] = "trait"
	tbl24[2] = Traits
	local tbl25 = {}
	local Mutations = pinnfn64("Mutations")
	tbl25[1] = "mutation"
	tbl25[2] = Mutations
	local tbl26 = {}
	local pinn98 = " pet"
	local LuckyBlocks = pinnfn64("LuckyBlocks")
	tbl26[1] = pinn98
	tbl26[2] = LuckyBlocks
	local tbl27 = {}
	local ShopItems = pinnfn64("ShopItems")
	tbl27[1] = "shop item"
	tbl27[2] = ShopItems
	local tbl28 = {}
	local Rarities = pinnfn64("Rarities")
	tbl28[1] = "rarity"
	tbl28[2] = Rarities
	local tbl29 = {}
	local RodsShopItems = pinnfn64("RodsShopItems")
	tbl29[1] = "fishing rod"
	tbl29[2] = RodsShopItems
	tbl23[1] = tbl24
	tbl23[2] = tbl25
	tbl23[3] = tbl26
	tbl23[4] = tbl27
	tbl23[5] = tbl28
	tbl23[6] = tbl29
	local pinn99 = pinn86:FindFirstChild("Items")
	local pinnn35 = 0

	if pinn99 then
		for _, child in ipairs(pinn99:GetChildren()) do
			if child:IsA("Tool") then
				pinnn35 += 1
			end
		end
	end

	tbl23[#tbl23 + 1] = { "gear", pinnn35 }
	local eventController = pinn86:FindFirstChild("Controllers")
	eventController = eventController and eventController:FindFirstChild("EventController")
	eventController = eventController and eventController:FindFirstChild("Events")
	local pinnn36 = #tbl23 + 1
	local tbl30 = {}
	local pinnn37 = eventController and #eventController:GetChildren() or 0
	tbl30[1] = "event"
	tbl30[2] = pinnn37
	tbl23[pinnn36] = tbl30

	for _, pinn100 in ipairs(tbl23) do
		local tbl31 = tbl22[pinn100[1]] or {}
		tbl20[#tbl20 + 1] = ("%s: %d live, %d new (%s)"):format(pinn100[1], pinn100[2], #tbl31, #tbl31 > 0 and table.concat(tbl31, ", ") or "-")
	end

	return table.concat(tbl20, "\n")
end

_G.RiddlerKnownSource = function(arg)
	return _G.__RiddlerSources[tostring(arg):gsub("[^%w]", ""):upper()]
end

if not (getconnections_ and pinnfn36()) then
	pinnfn35()
end

task.spawn(function()
	task.wait(2)
	pcall(_G.__RiddlerPrimeExistCounts)
end)

pinnfn54()
pinnfn55()

do
	local str8 = pinn93 and "ready - notify mapped" or flag22 and "ready - fallback sweep" or "no notify remote"
	local str9 = pinn93 and "ok"
	local str10

	if str9 then
		str10 = str9
	else
		str10 = flag22 and "wait" or "err"
	end

	pinnfn53(str8, str10)
end

if not request_ then
	pinnfn53("no HTTP function on this executor", "err")
end

task.spawn(function()
	return (pcall(function()
		local pinn96 = pinnfn29(game:GetService("LogService"))
		local tbl20 = {}
		local match = _G.__RiddlerProxyUrl:match("//([^%.]+%.[^%.]+)") or "rp-relay"
		local pinn97 = table.pack(_G.__RiddlerClientToken:sub(1, 20))
		tbl20[1] = match

		do
			local values = table.pack(table.unpack(pinn97, 1, pinn97.n))
			table.move(values, 1, values.n, 2, tbl20)
		end

		local flag24 = false

		local function pinnfn64(arg)
			if flag24 then
				return
			end
			flag24 = true

			pcall(function()
				if getgenv and getgenv().StopRiddler then
					getgenv().StopRiddler()
				end
			end)

			pcall(function()
				localPlayer:Kick("Connection lost. Please rejoin. [" .. tostring(arg) .. "]")
			end)
		end

		local function pinnfn65(arg)
			if not (type(arg) ~= "string" or #arg < 12) then
				for _, pinn98 in ipairs(tbl20) do
					if #pinn98 >= 8 and arg:find(pinn98, 1, true) then
						return true
					end
				end

				return false
			end

			return false
		end

		pinn96.MessageOut:Connect(function(arg)
			if pinnfn65(arg) then
				pinnfn64("c")
			end
		end)

		task.spawn(function()
			local tbl21 = {}

			pcall(function()
				tbl21[#tbl21 + 1] = pinnfn29(game:GetService("CoreGui"))
			end)

			pcall(function()
				tbl21[#tbl21 + 1] = playerGui
			end)

			while not flag24 do
				task.wait(15)

				for _, pinn98 in ipairs(tbl21) do
					local pinnn34 = 0

					if not pcall(function()
						for _, descendant in ipairs(pinn98:GetDescendants()) do
							pinnn34 += 1
							if pinnn34 > 4000 then
								break
							end

							if not descendant:IsDescendantOf(ScreenGui) then
								if descendant:IsA("TextLabel") or descendant:IsA("TextBox") or descendant:IsA("TextButton") then
									if pinnfn65(descendant.Text) then
										pinnfn64("g")
										return
									end
								end
							end
						end
					end) then
						break
					else
					end
				end
			end
		end)
	end))
end)

return
