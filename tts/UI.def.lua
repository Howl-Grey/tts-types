---@class tts__UI
UI = {}

---@alias tts__UIAssetName string

---@shape tts__UIAsset
---@field name tts__UIAssetName
---@field url string


---@alias tts__UILayoutElement_Tag "HorizontalLayout" | "VerticalLayout" | "TableLayout" | "Row" | "Cell"
---@alias tts__UIScrollView_Tag "HorizontalScrollView" | "VerticalScrollView"
---@alias tts__UIScrollViewElement tts__UIHorizontalScrollViewElement | tts__UIVerticalScrollViewElement
---@alias tts__UILayoutElement tts__UIHorizontalLayoutElement | tts__UIVerticalLayoutElement | tts__UITableLayoutElement | tts__UITableLayoutCellElement | tts__UITableLayoutRowElement
---@alias tts__UIElement_Tag  tts__UILayoutElement_Tag | tts__UIScrollView_Tag | "Button" | "Panel" | "Text" | "GridLayout"
---@alias tts__UIElement tts__UILayoutElement | tts__UIScrollViewElement | tts__UIButtonElement | tts__UIPanelElement | tts__UITextElement

---@alias tts__UIElement_Alignment "UpperLeft" | "UpperCenter" | "UpperRight" | "MiddleLeft" | "MiddleCenter" | "MiddleRight" | "LowerLeft" | "LowerCenter" | "LowerRight"
---@alias tts__UIElement_Axis "Horizontal" | "Vertical"
---@alias tts__UIElement_Boolean boolean | "true" | "false" | "1" | "0" | 1 | 0
---@alias tts__UIElement_Color string
---@alias tts__UIElement_ColorBlock string
---@alias tts__UIElement_Constraint "Flexible" | "FixedColumnCount" | "FixedRowCount"
---@alias tts__UIElement_ContentSizeFit "vertical" | "horizontal" | "both" | "none"
---@alias tts__UIElement_Corner "UpperLeft" | "UpperRight" | "LowerLeft" | "LowerRight"
---@alias tts__UIElement_FontStyle "Normal" | "Bold" | "Italic" | "BoldAndItalic"
---@alias tts__UIElement_IconAlignment "Left" | "Right"
---@alias tts__UIElement_Id string
---@alias tts__UIElement_MovementType "Unrestricted" | "Elastic" | "Clamped"
---@alias tts__UIElement_Navigation "None" | "Horizontal" | "Vertical" | "Automatic" | "Explicit"
---@alias tts__UIElement_Number number | string
---@alias tts__UIElement_Padding string
---@alias tts__UIElement_Percentage string
---@alias tts__UIElement_ScrollbarVisibility "Permanent" | "AutoHide" | "AutoHideAndExpandViewport"
---@alias tts__UIElement_Vector2 string
---@alias tts__UIElement_Vector3 string

---@alias tts__UIElement_HideAnimation "None" | "Shrink" | "FadeOut" | "SlideOut_Left" | "SlideOut_Right" | "SlideOut_Top" | "SlideOut_Bottom"
---@alias tts__UIElement_ShowAnimation "None" | "Grow" | "FadeIn" | "SlideIn_Left" | "SlideIn_Right" | "SlideIn_Top" | "SlideIn_Bottom"


---@alias tts__UIElement_CallbackFunction fun(player: tts__Player, value: string, id: nil | string)

--- The name of global function matching the type tts__UIElement_CallbackFunction.
---
--- By default the global function is looked for in the Lua script context belonging to the same
--- object as the UI was presented on (or in Global if the UI is Global UI). However, prefixing the
--- function name with either "Global/" or "[Object GUID]/", will cause the message to be delivered
--- to the corresponding script context.
---@alias tts__UIElement_CallbackFunctionName string

---mouse_button passed is "-1" (Left), "-2" (Right) or "-3" (Middle).
---@alias tts__UIElement_CallbackAltClick -1 | -2 | -3

---@shape tts__UIElementBase_Attributes
---@field id nil | tts__UIElement_Id
---@field name nil | string
---@field class nil | string @Space separated list of class names
---@field color nil | tts__UIElement_Color
---@field active nil | tts__UIElement_Boolean @Default true
---@field raycastTarget nil | tts__UIElement_Boolean @Default true
---@field onClick nil | tts__UIElement_CallbackFunctionName @Unless you provide your own parameter as part of the name, the callback is passed "-1" (Left), "-2" (Right) or "-3" (Middle) as the value.
---@field onMouseDown nil | tts__UIElement_CallbackFunctionName @Unless you provide your own parameter as part of the name, the callback is passed "-1" (Left), "-2" (Right) or "-3" (Middle) as the value.
---@field onMouseUp nil | tts__UIElement_CallbackFunctionName @Unless you provide your own parameter as part of the name, the callback is passed "-1" (Left), "-2" (Right) or "-3" (Middle) as the value.
---@field onMouseEnter nil | tts__UIElement_CallbackFunctionName @Unless you provide your own parameter as part of the name, the callback is passed "-1" as the value.
---@field onMouseExit nil | tts__UIElement_CallbackFunctionName @Unless you provide your own parameter as part of the name, the callback is passed "-1" as the value.
---@field shadow nil | tts__UIElement_Color @Default "None"
---@field shadowDistance nil | tts__UIElement_Vector2 @Default "1 -1"
---@field outline nil | tts__UIElement_Color @Default "None"
---@field outlineSize nil | tts__UIElement_Vector2 @Default "1 -1"
---@field ignoreLayout nil | tts__UIElement_Boolean @Default false
---@field minWidth nil | tts__UIElement_Number
---@field minHeight nil | tts__UIElement_Number
---@field preferredWidth nil | tts__UIElement_Number
---@field preferredHeight nil | tts__UIElement_Number
---@field flexibleWidth nil | tts__UIElement_Number
---@field flexibleHeight nil | tts__UIElement_Number
---@field rectAlignment nil | tts__UIElement_Alignment @Default "MiddleCenter"
---@field width nil | tts__UIElement_Number | tts__UIElement_Percentage @Default "100%"
---@field height nil | tts__UIElement_Number | tts__UIElement_Percentage @Default "100%"
---@field offsetXY nil | tts__UIElement_Vector2 @Default "0 0"
---@field showAnimation nil | tts__UIElement_ShowAnimation @Default "None"
---@field hideAnimation nil | tts__UIElement_HideAnimation @Default "None"
---@field showAnimationDelay nil | tts__UIElement_Number @Default "0"
---@field hideAnimationDelay nil | tts__UIElement_Number @Default "0"
---@field animationDuration nil | tts__UIElement_Number @Default "0.25"
---@field contentSizeFitter nil | tts__UIElement_ContentSizeFit @Default "none"
---@field anchorMin nil | tts__UIElement_Vector2
---@field anchorMax nil | tts__UIElement_Vector2
---@field sizeDelta nil | tts__UIElement_Vector2
---@field pivot nil | tts__UIElement_Vector2
---@field position nil | tts__UIElement_Vector3
---@field rotation nil | tts__UIElement_Vector3
---@field scale nil | tts__UIElement_Vector2
---@field offsetMin nil | tts__UIElement_Vector2
---@field offsetMax nil | tts__UIElement_Vector2
---@field offsetMax nil | tts__UIElement_Vector2
---@field selected nil | tts__UIElement_Boolean @Default false
---@field navigation nil | tts__UIElement_Navigation @Default "Automatic"
---@field selectOnUp nil | tts__UIElement_Id
---@field selectOnDown nil | tts__UIElement_Id
---@field selectOnLeft nil | tts__UIElement_Id
---@field selectOnRight nil | tts__UIElement_Id
---@field tooltip nil | string

---@shape tts__UIElementBase
---@field tag tts__UIElement_Tag
---@field attributes nil | tts__UIElementBase_Attributes
---@field children nil | tts__UIElement[]

---@shape tts__UIInputElementBase : tts__UIElementBase
---@field onValueChanged nil | tts__UIElement_CallbackFunctionName @Name of function with the type tts__UIElement_CallbackFunction

---@alias tts__UIButtonElement_Transition "None" | "ColorTint" | "SpriteSwap" | "Animation"

---@shape tts__UIButtonElement_Attributes : tts__UIElementBase_Attributes
---@field interactable nil | tts__UIElement_Boolean @Default true
---@field textColor nil | tts__UIElement_Color @Default "#000000"
---@field colors nil | tts__UIElement_ColorBlock @Default "#FFFFFF|#FFFFFF|#C8C8C8|rgba(0.78,0.78,0.78,0.5)"
---@field textColors nil | tts__UIElement_ColorBlock
---@field textShadow nil | tts__UIElement_Color @Default "None"
---@field textOutline nil | tts__UIElement_Color @Default "None"
---@field textAlignment nil | tts__UIElement_Alignment @Default "UpperLeft"
---@field icon nil | tts__UIAssetName @Default ""
---@field iconWidth nil | tts__UIElement_Color
---@field iconHeight nil | tts__UIElement_Color
---@field iconAlignment nil | tts__UIElement_IconAlignment @Default "Left"
---@field padding nil | tts__UIElement_Padding @Default "0 0 0 0"
---@field transition nil | tts__UIButtonElement_Transition
---@field highlightedSprite nil | tts__UIAssetName
---@field pressedSprite nil | tts__UIAssetName
---@field disabledSprite nil | tts__UIAssetName
---@field highlightedSprite nil | tts__UIAssetName

---@shape tts__UIButtonElement : tts__UIElementBase
---@field attributes nil | tts__UIButtonElement_Attributes
---@field value nil | string

---@shape tts__UIDropdownElement : tts__UIInputElementBase
---@field onValueChanged tts__UIElement_CallbackFunctionName @Callback name may be optionally followed by "(selectedText)", "(selectedValue)" or "(selectedIndex)". The latter causes the selected Option's index (0-based) to be passed to the callback (but represented as a string). The former two are identical and match the default behavior (no parameter specified) passing the text value of the Option to the callback.
---@field textAlignment nil | tts__UIElement_Alignment @Default "UpperLeft"
---@field textColor nil | tts__UIElement_Color @Default "#000000"
---@field textOutline nil | tts__UIElement_Color @Default "None"
---@field textShadow nil | tts__UIElement_Color @Default "None"
---@field itemBackgroundColors nil | tts__UIElement_ColorBlock @Default "#FFFFFF|#FFFFFF|#C8C8C8|rgba(0.78,0.78,0.78,0.5)"
---@field itemTextColor nil | tts__UIElement_Color @Default "#000000"
---@field checkColor nil | tts__UIElement_Color @Default "#000000"
---@field checkImage nil | tts__UIAssetName
---@field checkImagePreserveAspect nil | boolean
---@field checkSize nil | number
---@field arrowColor nil | tts__UIElement_Color @Default "#000000"
---@field arrowImage nil | tts__UIAssetName
---@field arrowOffset nil | tts__UIElement_Vector2
---@field dropdownBackgroundColor nil | tts__UIElement_Color @Default "None"
---@field dropdownBackgroundImage nil | tts__UIAssetName
---@field dropdownHeight nil | number
---@field scrollbarColors nil | tts__UIElement_ColorBlock
---@field scrollbarImage nil | tts__UIAssetName
---@field scrollbarBackgroundColor nil | tts__UIElement_Color @Default "None"
---@field scrollbarBackgroundImage nil | tts__UIAssetName
---@field scrollSensitivity nil | number @Default 1.0. A factor/multiplier to augment the scroll speed.
---@field itemHeight nil | number

---@alias tts__UITextElement_HorizontalOverflow "Wrap" | "Overflow"
---@alias tts__UITextElement_VerticalOverflow "Truncate" | "Overflow"

---@shape tts__UITextElement_Attributes : tts__UIElementBase_Attributes
---@field text nil | string @Text to be displayed. Default nil
---@field alignment nil | tts__UIElement_Alignment @Default "MiddleCenter"
---@field color nil | tts__UIElement_Color
---@field font nil | string @Note: At present TTS doesn't really support custom fonts. You can reference a system font name, but each OS has a different font list, so it's probably a bad idea.
---@field fontStyle nil | tts__UIElement_FontStyle @Default "Normal"
---@field fontSize nil | tts__UIElement_Number @Default 14
---@field resizeTextForBestFit nil | tts__UIElement_Boolean @Default false
---@field resizeTextMinSize nil | tts__UIElement_Number @Default 10
---@field resizeTextMaxSize nil | tts__UIElement_Number @Default 40
---@field horizontalOverflow nil | tts__UITextElement_HorizontalOverflow @Default "Overflow"
---@field verticalOverflow nil | tts__UITextElement_VerticalOverflow @Default "Truncate"

---@shape tts__UITextElement : tts__UIElementBase
---@field tag "Text"
---@field attributes nil | tts__UITextElement_Attributes
---@field children nil
---@field value nil | string

---@shape tts__UIPanelElement : tts__UILayoutElementBase
---@field tag "Panel"

---@shape tts__UILayoutElementBase_Attributes : tts__UIElementBase_Attributes
---@field childAlignment nil | tts__UIElement_Alignment
---@field padding nil | tts__UIElement_Padding

---@shape tts__UILayoutElementBase : tts__UIElementBase
---@field attributes nil | tts__UILayoutElementBase_Attributes

---@shape tts__UIGridLayoutElement_Attributes : tts__UILayoutElementBase_Attributes
---@field padding nil | tts__UIElement_Padding
---@field spacing nil | tts__UIElement_Vector2
---@field cellSize nil | tts__UIElement_Vector2
---@field startCorner nil | tts__UIElement_Corner
---@field startAxis nil | tts__UIElement_Axis
---@field childAlignment nil | tts__UIElement_Alignment
---@field constraint nil | tts__UIElement_Constraint
---@field constraintCount nil | tts__UIElement_Number

---@shape tts__UIGridLayoutElement : tts__UILayoutElementBase
---@field tag "GridLayout"
---@field attributes tts__UIGridLayoutElement_Attributes


---@shape tts_UIHorizontalOrVerticalScrollViewElement_Attributes : tts__UILayoutElementBase_Attributes
---@field horizontal nil | tts__UIElement_Boolean @Default true for HorizontalScrollView
---@field vertical nil | tts__UIElement_Boolean @Default true for VerticalScrollView
---@field movementType nil | tts__UIElement_MovementType @Default "Clamped"
---@field elasticity nil | tts__UIElement_Number @Default 0.1
---@field inertia nil | tts__UIElement_Boolean @Default true
---@field decelerationRate nil | tts__UIElement_Number @Default 0.135
---@field scrollSensitivity nil | tts__UIElement_Number @Default 1
---@field horizontalScrollbarVisibility nil | tts__UIElement_ScrollbarVisibility
---@field verticalScrollbarVisibility nil | tts__UIElement_ScrollbarVisibility
---@field noScrollbars nil | tts__UIElement_Boolean @Default false
---@field scrollbarBackgroundColor nil | tts__UIElement_Color @Default "#FFFFFF"
---@field scrollbarColors nil | tts__UIElement_ColorBlock @Default "#FFFFFF|#FFFFFF|#C8C8C8|rgba(0.78,0.78,0.78,0.5)"
---@field scrollbarImage nil | tts__UIAssetName

---@shape tts__UIHorizontalScrollViewElement : tts__UILayoutElementBase
---@field attributes tts_UIHorizontalOrVerticalScrollViewElement_Attributes

---@shape tts__UIVerticalScrollViewElement : tts__UILayoutElementBase
---@field attributes tts_UIHorizontalOrVerticalScrollViewElement_Attributes

---@shape tts__UIHorizontalOrVerticalLayoutElementBase_Attributes : tts__UILayoutElementBase_Attributes
---@field spacing nil | tts__UIElement_Number @Default 0
---@field childForceExpandWidth nil | tts__UIElement_Boolean @Default true
---@field childForceExpandHeight nil | tts__UIElement_Boolean @Default true
---@field childControlWidth nil | tts__UIElement_Boolean @Default true
---@field childControlHeight nil | tts__UIElement_Boolean @Default true
---@field childScaleWidth nil | tts__UIElement_Boolean @Default false
---@field childScaleHeight nil | tts__UIElement_Boolean @Default false

---@shape tts__UIHorizontalLayoutElement_Attributes : tts__UIHorizontalOrVerticalLayoutElementBase_Attributes

---@shape tts__UIHorizontalLayoutElement : tts__UIElementBase
---@field tag "HorizontalLayout"
---@field attributes nil | tts__UIHorizontalLayoutElement_Attributes

---@shape tts__UITableLayoutCellElement_Attributes : tts__UILayoutElementBase_Attributes
---@field columnSpan nil|number @integer.  Default 1.
---@field dontUseTableCellBackground nil|boolean @If set to true, then this cell will ignore the tables' cellBackgroundImage and values. Default false.
---@field overrideGlobalCellPadding nil|boolean @If set to true, then this cell will ignore the tables' cellPadding value. Default false.
---@field cellBackgroundColor nil|tts__UIElement_Color @Color for this cells background. Default parent table setting.
---@field padding nil|tts__UIElement_Padding @float(left) float(right) float(top) float(bottom). Default parent table setting.
---@field childForceExpandWidth nil|boolean @Default true.
---@field childForceExpandHeight nil|boolean @default true.

---@shape tts__UITableLayoutCellElement : tts__UIElementBase
---@field tag "Cell"
---@field attributes tts__UITableLayoutCellElement_Attributes

---@shape tts__UITableLayoutRowElement_Attributes : tts__UILayoutElementBase_Attributes
---@field preferredHeight nil|number @Sets the height for this row. Use a value of '0' to specify that this row should be auto-sized. Default 0.
---@field dontUseTableRowBackground nil|boolean @If set to true, then this row will ignore the tables' rowBackgroundImage and rowBackgroundColor values, allowing you to override those values for this row. Default false.
---@field rowBackgroundImage nil|string @Image to use as the background for this row. Default parent table setting.
---@field rowBackgroundColor nil|tts__UIElement_Color @Color to use for this rows background. Default parent table setting.

---@shape tts__UITableLayoutRowElement : tts__UILayoutElementBase
---@field tag "Row"
---@field attributes nil|tts__UITableLayoutRowElement_Attributes
---@field children nil|tts__UIElement[]

---@shape tts__UITableLayoutElement_Attributes : tts__UILayoutElementBase_Attributes
---@field padding nil|tts__UIElement_Padding @float(left) float(right) float(top) float(bottom). Default '0 0 0 0'
---@field cellSpacing nil|number @Spacing between each cell.  Default 0.
---@field columnWidths nil|string @(Optional) Space delimited float. Explicitly set the width of each column. Use a value of 0 to auto-size a specific column. Default nil.
---@field automaticallyAddColumns nil|boolean @If more cells are added to a row than are accounted for by columnWidths, should this TableLayout automatically add one or more new auto-sized entries (0) to columnWidths? Default true.
---@field automaticallyRemoveEmptyColumns nil|boolean @If there are more entries in columnWidths than there are cells in any row, should this TableLayout automatically remove entries from columnWidths until their are no 'empty' columns? Default true.
---@field autoCalculateHeight nil|boolean @If set to true, then the height of this TableLayout will automatically be calculated as the sum of each rows preferredHeight value. This option cannot be used without explicitly sized rows. Default false.
---@field useGlobalCellPadding nil|boolean @If set to true, then all cells will use this TableLayout's cellPadding value. Default true.
---@field cellPadding nil|boolean @Padding for each cell. float(left) float(right) float(top) float(bottom). Default '0 0 0 0'.
---@field cellBackgroundImage nil|string @Image to use as the background for each cell. Default nil.
---@field cellBackgroundColor nil|tts__UIElement_Color @Color for each cells background. Default rgba(1,1,1,0.4).
---@field rowBackgroundImage nil|string @Image to use as the background for each row. Default nil.
---@field rowBackgroundColor nil|tts__UIElement_Color @Color to use for each rows background. Default 'clear'.

---@shape tts__UITableLayoutElement : tts__UILayoutElementBase
---@field tag "TableLayout"
---@field attributes nil | tts__UITableLayoutElement_Attributes
---@field children nil | tts__UIElement[]

---@shape tts__UIVerticalLayoutElement_Attributes : tts__UIHorizontalOrVerticalLayoutElementBase_Attributes

---@shape tts__UIVerticalLayoutElement : tts__UIElementBase
---@field tag "VerticalLayout"
---@field attributes nil | tts__UIVerticalLayoutElement_Attributes

---@param id tts__UIElement_Id
---@param name string
---@return string
function UI.getAttribute(id, name) end

---@param id tts__UIElement_Id
---@return table<string, string>
function UI.getAttributes(id) end

---@param id tts__UIElement_Id
---@return string
function UI.getValue(id) end

---@return string
function UI.getXml() end

---@return tts__UIElement[]
function UI.getXmlTable() end

---@param id string
---@return boolean
function UI.hide(id) end

---@param id tts__UIElement_Id
---@param name string
---@param value string | number | boolean
---@return boolean
function UI.setAttribute(id, name, value) end

---@param id tts__UIElement_Id
---@param attributes table<string, string | number | boolean>
---@return boolean
function UI.setAttributes(id, attributes) end

---@param assets tts__UIAsset[]
---@return void
function UI.SetCustomAssets(assets) end

---@param id tts__UIElement_Id
---@param value string
---@return boolean
function UI.setValue(id, value) end

---@overload fun(xml: string)
---@param xml string
---@param assets tts__UIAsset[]
---@return boolean
function UI.setXml(xml, assets) end

---@overload fun(xmlTable: tts__UIElement[])
---@param xmlTable tts__UIElement[]
---@param assets tts__UIAsset[]
---@return boolean
function UI.setXmlTable(xmlTable, assets) end

---@param id string
---@return boolean
function UI.show(id) end
