## Spacer

Spacer will accept a body of text and correct any spacing issues involving periods. Ex. 

```
What.No. => What. No.
```

On the front-end, /messages/:id will show the highlighted corrections and one can go to api/messages for JSON output.

Messages can be created through the root page, or an AJAX POST request can be used on the url api/messages. To use, install and visit the root page to begin. Upon entering the input, the app will redirect you to the results. 

## Installation

1. Clone or download this repo
2. Run `bundle install`
3. Run `rake db:create db:migrate`
4. Run `rails server`
5. Go to [localhost:3000](localhost:3000)


## Todos

-Add metadata to JSON output  
-Test and address edge cases  

## Development
The master branch is the result of the project within 3 hours. There is continued development in the `continued-development` branch, where I primarily continue developing the `Message`'s correction features with TDD. 

### `Message` Model
- body  
- corrections  
- converted_text  

### Edge Cases
[here]: https://github.com/Holyoke/Spacer-Rails/blob/master/spec/models/message_spec.rb "here"

Model specs are used to develop the corrections feature. Check them out [here]

- ". " already there  
- "abc." period is at the end  
- " . "  
- ".  "  