COMMIT := b1d40da20608ca4613994628bc948207ccfcdfae
LICENSE_URL := https://github.com/boredzo/iso-8601-date-formatter/raw/$(COMMIT)/LICENSE.txt
SOURCE_URL_H := https://github.com/boredzo/iso-8601-date-formatter/raw/$(COMMIT)/ISO8601DateFormatter.h
SOURCE_URL_M := https://github.com/boredzo/iso-8601-date-formatter/raw/$(COMMIT)/ISO8601DateFormatter.m

SOURCES := \
	LICENSE.txt \
	Sources/CCLISO8601DateFormatter/ISO8601DateFormatter.h \
	Sources/CCLISO8601DateFormatter/ISO8601DateFormatter.m

all: $(SOURCES)
clean:
	rm $(SOURCES)

LICENSE.txt:
	@echo $@
	@curl -Lo $@ $(LICENSE_URL)

Sources/CCLISO8601DateFormatter/ISO8601DateFormatter.h:
	@echo $@
	@echo "// From $(SOURCE_URL_H)" > $@
	@curl -L $(SOURCE_URL_H) >> $@

Sources/CCLISO8601DateFormatter/ISO8601DateFormatter.m:
	@echo $@
	@echo "// From $(SOURCE_URL_M)" > $@
	@curl -L $(SOURCE_URL_M) | sed 's/NSUndefinedDateComponent/NSDateComponentUndefined/g' >> $@