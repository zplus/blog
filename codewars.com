####2015.04.27
```js
function shorter_reverse_longer(a, b) {
    var ordered = [a, b].sort(function (a, b) {
        return (a.length + 1) - b.length; // weight in favour of 'a'
    });

    var shorter = ordered[0];
    var longer = ordered[1];
    var reverseLonger = longer.split('').reverse().join('');

    return shorter + reverseLonger + shorter;
}
```
