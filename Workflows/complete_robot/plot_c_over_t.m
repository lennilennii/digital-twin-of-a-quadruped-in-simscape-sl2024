function plot_c_over_t(save, struct)
    time = struct.time;
    data = struct.signals.values;
    figure;
    plot(time, data);
    xlabel('Time');
    ylabel('Control value');
    ylim([0, 7.1])
    title('Control value over time');

    if save
        timestamp = datetime('now', 'Format', 'dd_MM-HH_mm');
        filename = ['Workflows\complete_robot\plots_for_debug\c_over_t\control_over_t_plot-' char(timestamp) '.fig'];
        saveas(gcf, filename);
    end
end
