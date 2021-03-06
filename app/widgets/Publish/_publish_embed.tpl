<li>
    {if="isset($embed->images)"}
        <span class="primary icon thumb"
            style="background-image: url({$embed->images[0]['url']})"
            title="{$embed->images[0]['width']} x {$embed->images[0]['height']} - {$embed->images[0]['size']|sizeToCleanSize}">
        </span>
    {else}
        <span class="primary icon bubble gray">
            {if="$embed->type == 'photo'"}
                <i class="zmdi zmdi-image"></i>
            {else}
                {if="$embed->providerIcon"}
                    <img src="{$embed->providerIcon}"/>
                {else}
                    <i class="zmdi zmdi-link"></i>
                {/if}
            {/if}
        </span>
    {/if}

    {if="$embed->type == 'photo'"}
        <p class="line">{$embed->images[0]['width']} x {$embed->images[0]['height']}</p>
        <p class="line">{$embed->images[0]['size']|sizeToCleanSize}</p>
    {else}
        <p class="line normal">{$embed->title}</p>
        {if="$embed->description"}
            <p>{$embed->description}</p>
        {/if}
    {/if}
</li>
