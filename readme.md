## Exercise

Spacer will accept a body of text and correct any spacing issues involving periods. Ex. 

```
What.No. => What. No.
```

On the front-end, /messages/:id will show the highlighted corrections and one can go to api/messages for JSON output.

Messages can be created through the root page, or an AJAX POST request can be used on the url api/messages.

## Installation

1. Clone or download this repo
2. Run `bundle install`
3. Run `rake db:create db:migrate db:seed`
4. Run `rails server`
5. Go to [localhost:3000](localhost:3000)


## Todos

-Add metadata to JSON output  
-Test and address edge cases  

## Development

#Text
- text  
- corrections  
- converted_text  

# Edge Cases
- ". " already there  
- "abc." period is at the end  
- " . "  
- ".  "  