-- 自动准备中文字幕
-- 将现有的每行英文字幕前加入一行空白的中文字幕，便于填充

local tr           = aegisub.gettext

script_name        = tr"自动准备中文字幕"
script_description = tr"将现有的每行英文字幕前加入一行空白的中文字幕，便于填充"
script_author      = "LuRenJiasWorld"
script_version     = "1.0"

function init(subtitles, selected_lines, active_line)
	local line_num = #subtitles
	local temp_subtitles = {}

	for i = 1, line_num, 1 do 
		local chinese_subtitle = subtitles[i]
		local english_subtitle = subtitles[i]

		-- 此处填写需要预填充的内容
		chinese_subtitle.text  = "{\\fad(120,120)} "

		-- 此处填写中文字幕的样式名称
		chinese_subtitle.style = "Chinese" 

		table.insert(temp_subtitles, chinese_subtitle)
		table.insert(temp_subtitles, english_subtitle)
	end

	subtitles.deleterange(1, line_num)

	local temp_subtitles_length = #temp_subtitles
	for i = 1, temp_subtitles_length, 1 do
		subtitles.append(temp_subtitles[i])
	end

	aegisub.set_undo_point(script_name)
end

aegisub.register_macro(script_name, tr"将现有的每行英文字幕前加入一行空白的中文字幕，便于填充", init)