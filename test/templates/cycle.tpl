{foreach $o as $i}
	[{cycle values="1,2"}]
{/foreach}

{cycle values="1,2" print=true}-

{foreach $o as $i}
	[{cycle name='c1' values="1,2" advance=false}]
{/foreach}

{foreach $a as $i}
	[{cycle name='c2' values=$a}]
{/foreach}

{foreach $a as $i}
	[{cycle name='c3' values=$a assign='zzz'}]
{/foreach}

{$zzz}
