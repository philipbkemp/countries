# Country Picker JS

1. Import the picker.js file into the HTML page
```html
<script src="picker.js"></script>
```

2. Define any custom properties
```html
<script>
  cpickerProperties({
    imgRoot: "/my-project/"
  });
</script>
```

3. Define your properties

| Property          | Default                                   | Description |
| ---               | ---                                       | --- |
| btnClass          | ```"btn btn-outline-primary mr-1 mb-1"``` | What classes an unselected button would use |
| btnSelectedClass  | ```"btn btn-primary mr-1 mb-1"```         | What classes the selected button would use |
| imgClass          | ```"mr-1"```                              | What classes are attached to the flag image |
| imgRoot           | ```""```                                  | Root folder to make sure flag images are found |
| selector          | ```".country-picker"```                   | Selector to find all elements that use this code |
