# Country Picker JS

1. Import the picker.js file into the HTML page
```html
<script src="picker.js"></script>
```

2. Include the HTML tag
```html
<input type="text"
       class="form-control country-picker"
       name="egone"
       id="egone"
       value="<?php print $selectedCountryCode; ?>"
       />
<div id="egone-pickarea"></div>
```
The ```country-picker``` class is the most important, as any INPUT with this class will be turned into the Country Picker search box.

The ID of the DIV area for picking the Country must have the same ID as the INPUT suffixed with ```-pickarea```. This can be styled however you wish.

3. Define any custom properties
```html
<script>
  cpickerProperties({
    imgRoot: "/my-project/"
  });
</script>
```

4. Define your properties

| Property          | Default                                   | Description |
| ---               | ---                                       | --- |
| btnClass          | ```"btn btn-outline-primary mr-1 mb-1"``` | What classes an unselected button would use |
| btnSelectedClass  | ```"btn btn-primary mr-1 mb-1"```         | What classes the selected button would use |
| clearClass        | ```"ml-2 badge badge-secondary p-2"```    | What styles to apply to the clear SPAN |
| clearHtml         | ```"X"```                                 | What text or markup should be used for the clear SPAN |
| imgClass          | ```"mr-1"```                              | What classes are attached to the flag image |
| imgHeight         | ```"26px"```                              | How tall the flag images should be |
| imgRoot           | ```""```                                  | Root folder to make sure flag images are found |
| maxResults | ```3``` | Maximum number of results to display
| selector          | ```".country-picker"```                   | Selector to find all elements that use this code |
| showMoreText | ```"+{count}"``` | Text to show on the "more results" button.<br /><br />```{count}``` is replaced with the number of additional results |