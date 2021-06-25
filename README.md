# Historiana

Site for: https://historiana.com.mx

- Based on template: https://startbootstrap.com/theme/freelancer
- Using framework: https://middlemanapp.com/
- Background photo by Jess Bailey Designs from Pexels: https://www.pexels.com/photo/gold-colored-paper-clips-near-notebook-and-pen-on-white-surface-1558689/

## Development

```ruby
bundle exec middleman server
```

### Create WEBP images

cwebp -q 75 -resize 792 0 certificate.png -o certificate.webp
cwebp -q 75 -resize 396 0 certificate.png -o thumb.webp

## Build

```ruby
bundle exec middleman build
```

