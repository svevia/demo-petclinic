FROM gitpod/workspace-full

USER gitpod

# Downgrade the Java version so that it's compatible with PetClinic
RUN bash -c ". /home/gitpod/.sdkman/bin/sdkman-init.sh && \
    sdk install java 8.0.362-zulu && \
    sdk default java 8.0.362-zulu"

RUN npx playwright install-deps
