; 左 ctrl キーの空打ちで ime の off/on を切り替える
;
; 左 ctrl キーの空打ちで ime を toggle
; ctrl キーを押している間に他のキーを打つと通常の ctrl キーとして動作


#Include IME.ahk

#MaxHotkeysPerInterval 350

*~a::
*~b::
*~c::
*~d::
*~e::
*~f::
*~g::
*~h::
*~i::
*~j::
*~k::
*~l::
*~m::
*~n::
*~o::
*~p::
*~q::
*~r::
*~s::
*~t::
*~u::
*~v::
*~w::
*~x::
*~y::
*~z::
*~1::
*~2::
*~3::
*~4::
*~5::
*~6::
*~7::
*~8::
*~9::
*~0::
*~F1::
*~F2::
*~F3::
*~F4::
*~F5::
*~F6::
*~F7::
*~F8::
*~F9::
*~F10::
*~F11::
*~F12::
*~`::
*~~::
*~!::
*~@::
*~#::
*~$::
*~%::
*~^::
*~&::
*~*::
*~(::
*~)::
*~-::
*~_::
*~=::
*~+::
*~[::
*~{::
*~]::
*~}::
*~\::
*~|::
*~;::
*~'::
*~"::
*~,::
*~<::
*~.::
*~>::
*~/::
*~?::
*~Esc::
*~Tab::
*~Space::
*~Left::
*~Right::
*~Up::
*~Down::
*~Enter::
*~PrintScreen::
*~Delete::
*~Home::
*~End::
*~PgUp::
*~PgDn::
    Return

*~LCtrl::Send {Blind}{vk07}
*~RCtrl::Send {Blind}{vk07}

LCtrl up::
    if (A_PriorHotkey == "*~LCtrl")
    {
        if IME_GetConverting() >= 1 {
            Return
        }

        If IME_GET() = 0
            IME_SET(1)
        ELSE
            IME_SET(0)
    }
Return

