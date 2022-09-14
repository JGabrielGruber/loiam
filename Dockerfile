# syntax=docker/dockerfile:1
FROM thevlang/vlang:alpine AS builder
WORKDIR /loiam/
COPY src/ ./
RUN v .

FROM alpine:latest  
WORKDIR /root/
COPY --from=builder /loiam/loiam ./
CMD ["./loiam"]  
