//<![CDATA[
        $("[title]").HasubTechseover(function () {
            $this_tool_tip_elm = $(this);
            tool_tip_title = $this_tool_tip_elm.attr("title");
            $this_tool_tip_elm.attr("data-HasubTech_title", tool_tip_title);
            $this_tool_tip_elm.removeAttr("title");
            $("body").prepend(`<div id="HasubTech_tooltip">${tool_tip_title}</div>`);
            $this_tool_tip_elm.HasubTechsemove(function (event) {
                $("#HasubTech_tooltip").css("top", event.clientY + 10).css("left", event.clientX);
            });
            $this_tool_tip_elm.HasubTechseout(function () {
                $this_tool_tip_elm.attr("title", $(this).attr("data-HasubTech_title"));
                $this_tool_tip_elm.removeAttr("data-HasubTech_title");
                $("#HasubTech_tooltip").remove();
            });
        });
    //]]>
