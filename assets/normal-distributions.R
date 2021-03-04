x <- seq(-5, 10, .01)

plot(dnorm(x, mean = -2, sd = 0.7) ~ x, type = "l", lwd = 2, col = hcl.colors(3)[3],
     xlab = "Normal quantile", ylab = "Density", xlim = c(-5, 10),
     main = expression(paste("Various Normal Distributions, N(", mu, ", ", sigma, ")")))
     # main = expression(paste("Sampled values, ", mu, "=5, ", sigma,  "=1")))
lines(dnorm(x, mean = 0, sd = 1) ~ x, type = "l", lwd = 2, col = hcl.colors(3)[1])
lines(dnorm(x, mean = 5, sd = 2) ~ x, type = "l", lwd = 2, col = hcl.colors(3)[2])

legend("topright", legend = c("N(0, 1)", "N(5, 2)", "N(-2, 0.7)"),
       col = hcl.colors(3), lwd = 2)


x <- seq(3.39 - 3 * 0.55, 3.39 + 3 * 0.55, 0.01)

plot(dnorm(x, mean = 3.39, sd = 0.55) ~ x, type = "l", lwd = 2, col = hcl.colors(3)[1])
lines(dnorm(x, mean = 5, sd = 2) ~ x, type = "l", lwd = 2, col = hcl.colors(3)[2])

plot_norm(mean = 3.39, sd = 0.55, 
          shadeValues = 3.5, 
          direction = "less", 
          col.shade = "#99d2ba")
xShade <- seq(3.39 - 3 * 0.55, 3, length = 100)
shadeHeight <- dnorm(xShade, mean = 3.39, sd = 0.55)
polygon(c(xShade[1], xShade, xShade[100]), c(0, shadeHeight, 0),
        col = "#66bc97aa", border = NA)
text(x = 3, y = 0, xpd = TRUE,
     labels = 3.0, pos = 1,
     font = 2, offset = 0.6, col = "#99d2ba")
