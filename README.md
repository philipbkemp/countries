# Country Picker JS

1. Import the picker.js file into the HTML page
```html
<script src="picker.js"></script>
```

Alternatively, use the minified version:
```html
<script src="picker.min.js"></script>
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

If you want to allow multiple selection, the ```-pickarea``` DIV element should have the attribute ```data-cpickermax="2"``` (to allow 0, 1, or 2 values to be selected)

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
| bootstrap         | ```4```                                   | Defines which version of Bootstrap classes to use<br />Specifically to define right/left margins |
| btnClass          | ```""``` | What classes an unselected button would use<br />```btn btn-outline-primary mb-1 {right margin 1}``` |
| btnSelectedClass  | ```""```         | What classes the selected button would use<br />```btn btn-primary mb-1 {right margin 1}``` |
| clearClass        | ```""```    | What styles to apply to the clear SPAN<br />```badge badge-secondary p-2 {left margin 2}``` |
| clearHtml         | ```"X"```                                 | What text or markup should be used for the clear SPAN |
| imgClass          | ```""```                              | What classes are attached to the flag image<br />``` {right margin 1}``` |
| imgHeight         | ```"26px"```                              | How tall the flag images should be |
| imgRoot           | ```""```                                  | Root folder to make sure flag images are found |
| maxResults | ```3``` | Maximum number of results to display
| maxSelectExceeded | ```"Cannot select more than {count}"``` | Text to show when more than the maximum number of countries have been selected<br /><br />```{count}``` is replaced with the number of currently (maximum) selected countries |
| noResultsClass | ```"badge badge-warning"``` | Class to add to the message when no results are found |
| noResultsText | ```"No results found for {term}"``` | Text to show when no results are found<br /><br />```{term}``` is replaced with the search term |
| requiredClassAlert | ```"badge badge-danger"``` | Class to add to the alert message if required value is not provided |
| requiredClassArea | ```"border border-danger"``` | Class to add to the Picking Area if required value is not provided |
| requiredClassSearch | ```"border border-danger"``` | Class to add to the Search box if required value is not provided |
| requiredMessage | ```"Please select a country"``` | Text to use if a required value is not provided |
| selector          | ```".country-picker"```                   | Selector to find all elements that use this code |
| showFlags | ```true``` | Whether or not to show the flags in the selection button |
| showMoreText | ```"+{count}"``` | Text to show on the "more results" button<br /><br />```{count}``` is replaced with the number of additional results |

## No JavaScript?

There is a method ```getCountryDropDown``` which can be used as follows that will allow you to have something for those without JavaScript. You would need to hide the JavaScript version and show this version according to your own styles and settings.

```html
<select name="egTwo" class="form-control">
       <?php print getCountryDropDown(); ?>
</select>
```

The currently selected value can be passed, or an empty string, to add the ```selected``` attribute to the OPTION tag of the chosen country.

## Factory methods

PHP and ColdFusion factories are provided, that allow some usage outside of JavaScript.

##### ```getCountryFromCode(code)```  
Returns the country name based on the three character ```code``` parameter provided. If no country is matched, an ```Unknown country``` text is provide

##### ```getCountryDropDown(selected)```  
Returns a string of ```<option>``` tags suitable for inserting inside a ```<select>``` tag in a form. If a ```selected``` parameter is provided and matches any of the countries in the list, that option will be marked as ```selected```
