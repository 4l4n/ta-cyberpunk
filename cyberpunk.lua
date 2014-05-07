-- cyberpunk theme for textadept 7.x
-- inspired in cyberpunk-theme for emacs
-- by Nicholas M. Van Horn

-- file:    cyberpunk.lua
-- version: 1.0
-- date:    07.05.14
-- author:  Alan Caruanambo Muñoz
-- contact: 4lit4n@gmail.com

-- You can redistribute it and/or modify it under the
-- terms of the GNU General Public License as published
-- by the Free Software Foundation; either
-- version 2, or (at your option) any later version.

local buffer = buffer
local property, property_int = buffer.property, buffer.property_int

-- property["color.cyberpunk-green+1"]  = 0x3CCE61
-- property["color.cyberpunk-pink"]     = 0xB469FF
-- property["color.cyberpunk-yellow-5"] = 0x00D7FF
-- property["color.cyberpunk-red+1"]    = 0xA3A3DC
-- property["color.cyberpunk-blue-2"]   = 0xCD5A6A
-- property["color.cyberpunk-red-2"]    = 0x00008B
-- property["color.cyberpunk-white-2"]  = 0xF8F8F8
-- property["color.cyberpunk-white-3"]  = 0xFAFAFF
-- property["color.cyberpunk-bg-1"]     = 0x2B2B2B
-- property["color.cyberpunk-blue+1"]   = 0xF3BF94
-- property["color.cyberpunk-gray-3"]   = 0x919191
-- property["color.cyberpunk-black-3"]  = 0x0A0A0A
-- property["color.cyberpunk-blue-1"]   = 0xEE687B
-- property["color.cyberpunk-gray-6"]   = 0x1A1A1A
-- property["color.cyberpunk-red-3"]    = 0x63639C
-- property["color.cyberpunk-gray-8"]   = 0x262626
-- property["color.cyberpunk-gray-4"]   = 0x999999
-- property["color.cyberpunk-red-4"]    = 0x53538C
-- property["color.cyberpunk-gray"]     = 0xD3D3D3
-- property["color.cyberpunk-green+3"]  = 0xAFD8AF
-- property["color.cyberpunk-black"]    = 0x000000
-- property["color.cyberpunk-red-1"]    = 0x00008B
-- property["color.cyberpunk-fg"]       = 0xCCDCDC
-- property["color.cyberpunk-blue-6"]   = 0xFECB96
-- property["color.cyberpunk-pink-2"]   = 0x7610CD
-- property["color.cyberpunk-blue-7"]   = 0xFFFF00
-- property["color.cyberpunk-yellow-1"] = 0x2DDEFB
-- property["color.cyberpunk-green+2"]  = 0x9FC59F
-- property["color.cyberpunk-blue-8"]   = 0xCD944F
-- property["color.cyberpunk-bg+2"]     = 0x5F5F5F
-- property["color.cyberpunk-magenta"]  = 0xC38CDC
-- property["color.cyberpunk-gray-7"]   = 0x4D4D4D
-- property["color.cyberpunk-green-2"]  = 0x006400
-- property["color.cyberpunk-red-5"]    = 0x3F077F
-- property["color.cyberpunk-yellow-2"] = 0x8FBFD0
-- property["color.cyberpunk-cyan"]     = 0xE3E093
-- property["color.cyberpunk-yellow-3"] = 0x3CFAD8
-- property["color.cyberpunk-black-2"]  = 0x21100C
-- property["color.cyberpunk-green"]    = 0x00FF00
-- property["color.cyberpunk-blue-4"]   = 0xEEDFB2
-- property["color.cyberpunk-yellow-4"] = 0x62C0E9
-- property["color.cyberpunk-bg-05"]    = 0x383838
-- property["color.cyberpunk-orange-1"] = 0x008CFF
-- property["color.cyberpunk-green+4"]  = 0xBFEBBF
-- property["color.cyberpunk-blue-3"]   = 0xE6D8AD
-- property["color.cyberpunk-orange"]   = 0x00A5FF
-- property["color.cyberpunk-green-1"]  = 0x578B2E

property["color.cyberpunk-blue"]     = 0xFF0000
property["color.cyberpunk-red"]      = 0x0000FF
property["color.cyberpunk-yellow"]   = 0x00FFFF
property["color.cyberpunk-bg+1"]     = 0x4F4F4F
property["color.cyberpunk-orange-2"] = 0x0064FF
property["color.cyberpunk-blue-5"]   = 0xFF834C
property["color.cyberpunk-bg"]       = 0x000000
property["color.cyberpunk-bg+3"]     = 0x6F6F6F
property["color.cyberpunk-white"]    = 0xFFFFFF
property["color.cyberpunk-gray-5"]   = 0x333333
property["color.cyberpunk-gray-2"]   = 0x89898B
property["color.cyberpunk-pink-1"]   = 0x9314FF
property["color.cyberpunk-green-3"]  = 0x66FF00

-- Default fonts
property['font']     = 'Bitstream Vera Sans Mono'
property['fontsize'] = 10

if WIN32 then
    property['font'] = 'Lucida Console'
    property['fontsize'] = 10
elseif OSX then
    property['font'] = 'Monaco'
    property['fontsize'] = 12
end

-- Predefined styles.
property['style.nothing']      = ''
property['style.default']      = 'font:%(font),size:%(fontsize),fore:%(color.cyberpunk-white),back:%(color.cyberpunk-bg)'
property['style.linenumber']   = 'fore:%(color.cyberpunk-bg+3),back:%(color.cyberpunk-bg)'
property['style.indentguide']  = 'fore:%(color.cyberpunk-bg)'
property['style.calltip']      = 'fore:%(color.cyberpunk-gray-4),back:%(color.cyberpunk-bg+1)'
property['style.class']        = '%(style.function)'
property['style.comment']      = '%(style.linenumber),italics'
property['style.constant']     = 'fore:%(color.cyberpunk-blue)'
property['style.embedded']     = '%(style.keyword),back:%(color.cyberpunk-gray-5)'
property['style.error']        = 'fore:%(color.cyberpunk-red-4),italics'
property['style.function']     = 'fore:%(color.cyberpunk-blue-5)'
property['style.identifier']   = ''
property['style.keyword']      = 'fore:%(color.cyberpunk-yellow)'
property['style.label']        = 'fore:%(color.cyberpunk-blue)'
property['style.number']       = 'fore:%(color.cyberpunk-red)'
property['style.operator']     = 'fore:%(color.cyberpunk-orange-2)'
property['style.preprocessor'] = '%(style.function)'
property['style.regex']        = '%(style.label)'
property['style.string']       = 'fore:%(color.cyberpunk-green-3)'
property['style.type']         = 'fore:%(color.cyberpunk-pink-1)'
property['style.variable']     = '%(style.type)'
property['style.whitespace']   = ''

-- Multiple Selection and Virtual Space
-- buffer.additional_sel_alpha  =
-- buffer.additional_sel_fore   =
-- buffer.additional_sel_back   =
-- buffer.additional_caret_fore =

-- buffer:set_sel_fore(true, property_int['color.cyberpunk-blue'])
buffer:set_sel_back(true, property_int['color.cyberpunk-gray-2'])
buffer.sel_alpha = 0x33

buffer.caret_fore            = property_int['color.cyberpunk-white']
buffer.caret_line_back       = property_int['color.cyberpunk-blue']
buffer.caret_line_back_alpha = 0x22

-- Markers.
local MARK_BOOKMARK                            = textadept.bookmarks.MARK_BOOKMARK
buffer.marker_back[MARK_BOOKMARK]              = property_int['color.cyberpunk-green']
buffer.marker_back[textadept.run.MARK_WARNING] = property_int['color.cyberpunk-yellow']
buffer.marker_back[textadept.run.MARK_ERROR]   = property_int['color.cyberpunk-yellow']

-- Fold Margin.
buffer:set_fold_margin_colour   (true, property_int['color.cyberpunk-bg'])
buffer:set_fold_margin_hi_colour(true, property_int['color.cyberpunk-bg'])

for i = 25, 31 do -- fold margin markers
    buffer.marker_fore[i]          = property_int['color.cyberpunk-bg']   -- box +/- bg
    buffer.marker_back[i]          = property_int['color.cyberpunk-bg+3'] -- line and box border
    buffer.marker_back_selected[i] = property_int['color.cyberpunk-bg+3']
end

-- Indicators.
local INDIC_BRACEMATCH = textadept.editing.INDIC_BRACEMATCH
local INDIC_HIGHLIGHT  = textadept.editing.INDIC_HIGHLIGHT
buffer.indic_fore[INDIC_BRACEMATCH] = property_int['color.cyberpunk-white'] -- cursor box color
buffer.indic_fore[INDIC_HIGHLIGHT]  = property_int['color.cyberpunk-white'] -- ctrl + alt + shift + h
buffer.indic_alpha[INDIC_HIGHLIGHT] = 50

-- Call tips
buffer.call_tip_fore_hlt = property_int['color.light_blue']

-- Long Lines
-- buffer.edge_colour = property_int['color.cyberpunk-pink-2']

-- others colors, used's in lexers definitions
property['color.green']  = property['color.cyberpunk-green-3']
property['color.red']    = property['color.cyberpunk-red']
property['color.yellow'] = property['color.cyberpunk-yellow']
