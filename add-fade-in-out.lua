-- 自动渐入渐出
-- 为所有字幕增加渐入渐出特效，优化视觉效果。建议在字幕翻译完成后进行。

local tr           = aegisub.gettext

script_name        = tr"自动渐入渐出"
script_description = tr"为所有字幕增加渐入渐出特效，优化视觉效果。建议在字幕翻译完成后进行。"
script_author      = "LuRenJiasWorld"
script_version     = "1.0"

-- 在这里编辑渐入渐出毫秒数
fade_in_out_ms     = 120

function init(subtitles, selected_lines, active_line)
	local line_num    = #subtitles
	local prefix_text = string.format("{\\fad(%d,%d)}", fade_in_out_ms, fade_in_out_ms)

	for i = 1, line_num, 1 do
		local current_line = subtitles[i]

		current_line.text = string.format("%s %s", prefix_text, current_line.text)

		subtitles[i] = current_line
	end

	aegisub.set_undo_point(script_name)
end

aegisub.register_macro(script_name, tr"为所有字幕增加渐入渐出特效，优化视觉效果。建议在字幕翻译完成后进行。", init)