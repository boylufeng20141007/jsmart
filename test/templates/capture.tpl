---
{capture name='testCapture1'}
this will be captured
{for $i=1 to 10}
   {$i}
{/for}
{/capture}

{if $smarty.capture}
	[{$smarty.capture.testCapture1}]
{else}
	[{$capture@testCapture1}]
{/if}


{capture name='testCapture2' assign='captureA'}
this will be captured into variable
{foreach $o as $i}{$i}{/foreach}
{/capture}

{$captureA}

{capture name='testCapture3' append='a'}
aaa
{/capture}

{capture name='testCapture4' append='a'}
bbb
{/capture}

{foreach $a as $i}
	{$i}
{/foreach}


{capture name='testCapture5' append='newA'}
this will be captured into new array
{foreach $o as $i}{$i}{/foreach}
{/capture}

{capture name='testCapture6' append='newA'}
this will be captured into new array
{foreach $o as $i}{$i}{/foreach}
{/capture}


{foreach $newA as $i}{$i}{/foreach}

