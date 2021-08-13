import * as React from 'react';

import { StyleSheet, View, Text, TouchableOpacity } from 'react-native';
import Alert from '@react-native-advance/alert';

export default function App() {
  const handlePress = () => {
    Alert.showMessage('Alert', 'Hello world!', 2);
  };
  return (
    <View style={styles.container}>
      <TouchableOpacity onPress={handlePress}>
        <Text>Click me</Text>
      </TouchableOpacity>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'center',
  },
  box: {
    width: 60,
    height: 60,
    marginVertical: 20,
  },
});
